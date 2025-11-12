# Path: src/BenchParser.py
"""This module will get a Expression from parser_bench_file and create the encrypted circuit using the CreateEncryption module
   Reworked to use multiprocessing with fork context and a shared registry (COW) for expressions.
"""

import logging
import os
import time
from typing import Callable, Dict, List, Tuple
from pyeda.boolalg.expr import Expression, Variable
from pyeda.inter import exprvar

from BenchParser import BenchParser
from CreateEncryption import get_locked_circuit
from utils.logic import convert_str_to_expr

# Multiprocessing imports
import multiprocessing

# Module-level registry to hold Expression objects before forking.
# On Linux, creating this registry in the parent and then forking child processes
# results in copy-on-write (COW) pages that are shared for read-only access.
_GATE_REGISTRY: Dict[str, Expression] = {}
# Store a reference to get_locked_circuit in a global that child processes can use
_GET_LOCKED_CIRCUIT = None  # set in initializer


def convert_exp_to_fn(
    exp: Expression, var_names_for_args_order: List[Variable]
) -> Callable:
    def fn(*args):
        point = {}
        for i, arg in enumerate(args):
            point[exprvar(var_names_for_args_order[i].name)] = arg
        return int(exp.restrict(point))

    return fn


def _get_inputs_in_order(exp: Expression) -> tuple[List[str], List[Variable]]:
    variables = exp.support
    ordered_variables: List[Variable] = []
    ordered_variables_str: List[str] = []
    for token in variables:
        if token and token not in ordered_variables:
            ordered_variables.append(token)
            ordered_variables_str.append(token.name)
    return ordered_variables_str, ordered_variables


def _worker_init(get_locked_circuit_ref):
    """
    initializer for worker processes. This runs in each child process after fork.
    We set module-level references here to ensure child has them.
    """
    global _GET_LOCKED_CIRCUIT
    _GET_LOCKED_CIRCUIT = get_locked_circuit_ref
    # Optionally we could also warm other heavy libs here if needed.


def _encrypt_single_gate(args: Tuple[str, List[int], int, int]) -> Tuple[str, str]:
    """
    Worker function that encrypts a single gate.
    It expects gate expression to be available in module-level _GATE_REGISTRY (populated before Pool creation).
    args: (gate_name, key_values, max_key_bit_size, starting_key)
    returns: (gate_name, encrypted_expression_str)
    """
    gate_name, key_values, max_key_bit_size, starting_key = args

    # Retrieve the Expression from the registry (inherited from parent via fork)
    expr = _GATE_REGISTRY.get(gate_name)
    if expr is None:
        raise KeyError(f"Expression for gate '{gate_name}' not found in _GATE_REGISTRY")

    inps_str, inps_var = _get_inputs_in_order(expr)
    key_names = ["keyinput" + str(i + starting_key) for i in range(max_key_bit_size)]

    fn = convert_exp_to_fn(expr, inps_var)

    # Use the global reference to get_locked_circuit (set by initializer)
    if _GET_LOCKED_CIRCUIT is None:
        # fallback: import directly if initializer wasn't used for some reason
        from CreateEncryption import get_locked_circuit as _g
        locked = _g(
            inputs=inps_str,
            outputs=[gate_name],
            output_fns=[fn],
            keys=key_names,
            key_combinations=key_values,
        )
    else:
        locked = _GET_LOCKED_CIRCUIT(
            inputs=inps_str,
            outputs=[gate_name],
            output_fns=[fn],
            keys=key_names,
            key_combinations=key_values,
        )

    encrypted_expr = list(locked.values())[0]
    return gate_name, str(encrypted_expr)


class BenchEncryptor:
    def __init__(self, bench_file: str):
        self.bench_file = bench_file
        self.parsed_bench = BenchParser(bench_file)

    def __get_inputs_in_order(
        self, exp: Expression
    ) -> tuple[List[str], List[Variable]]:
        return _get_inputs_in_order(exp)

    def get_encrypted_expression_for_bench(
        self, max_key_bit_size: int
    ) -> Tuple[Dict[str, Expression], Dict[str, Expression]]:
        simplified_functions = self.parsed_bench.get_output_functions()
        return simplified_functions, self.encrypt_gates(
            simplified_functions, [1, 3], max_key_bit_size
        )

    def encrypt_up_to_k_inputs(
        self,
        k: int,
        key_values: List[int] = [1, 3],
        max_key_bit_size: int = 2,
        max_gates_to_lock: int = 0,
        num_workers: int = 0,
    ) -> Dict[str, Expression]:
        logging.debug("encrypting up to k inputs")
        start = time.time()
        gates_with_k_inputs = self.parsed_bench.get_gates_with_k_inputs(k)
        original_k = k
        while len(gates_with_k_inputs) == 0:
            logging.info(f"Could not find k to encrypt keys, trying k={k+1}")
            k += 1
            gates_with_k_inputs = self.parsed_bench.get_gates_with_k_inputs(k)
            if (k - original_k) > 100:
                raise ValueError("Could not find k to encrypt keys")

        # cut the gates to encrypt to the max_gates_to_lock
        if max_gates_to_lock > 0 and max_gates_to_lock < len(gates_with_k_inputs):
            logging.info(
                f"Cutting gates to encrypt to {max_gates_to_lock}, from {len(gates_with_k_inputs)}"
            )
            gates_with_k_inputs = {
                key: val
                for key, val in list(gates_with_k_inputs.items())[:max_gates_to_lock]
            }

        expr_with_k_inputs: dict[str, Expression] = {}
        for gate in gates_with_k_inputs:
            expr = convert_str_to_expr(gate, self.parsed_bench.parsed_bench["gates"])
            if expr is not None:
                expr_with_k_inputs[gate] = expr

        logging.info(f"Number of gates to be processed: {len(expr_with_k_inputs)}")
        logging.info(f"Number of key_values to be processed: {len(key_values)}")

        r = self.encrypt_gates(expr_with_k_inputs, key_values, max_key_bit_size, num_workers=num_workers)
        logging.info(
            f"Time taken to encrypt up to k inputs: {time.time() - start} seconds"
        )
        return r

    def encrypt_gates(
        self,
        gates: dict[str, Expression],
        key_values: List[int],
        max_key_bit_size: int,
        num_workers: int = 0,
    ) -> Dict[str, Expression]:
        """
        Encrypt gates using multiprocessing with fork context and a shared registry.
        On Linux, fork + registry (COW) avoids sending big Expression objects through pickle.
        """
        if len(gates) == 0:
            return {}

        # determine worker count
        if not num_workers or num_workers <= 0:
            num_workers = min(max(1, multiprocessing.cpu_count()), len(gates))

        # Populate module-level registry BEFORE creating Pool so children inherit via fork (COW)
        global _GATE_REGISTRY
        _GATE_REGISTRY = {}  # replace any previous content
        for gate, expr in gates.items():
            _GATE_REGISTRY[gate] = expr

        # Prepare lightweight args to send to workers: (gate_name, key_values, max_key_bit_size, starting_key)
        starting_key = 0
        task_args = []
        for gate in gates.keys():
            task_args.append((gate, key_values, max_key_bit_size, starting_key))
            starting_key += max_key_bit_size

        logging.info(f"Using {num_workers} worker processes to process {len(gates)} gates")

        encrypted_circuits: Dict[str, Expression] = {}

        # Use fork context explicitly (Linux). This allows child processes to inherit parent's memory (COW).
        ctx = multiprocessing.get_context("fork")
        # Provide get_locked_circuit as an init arg so initializer can set it in child.
        with ctx.Pool(processes=num_workers, initializer=_worker_init, initargs=(get_locked_circuit,)) as pool:
            results = pool.map(_encrypt_single_gate, task_args)

        # Convert encrypted expression strings back to pyeda Expressions
        from pyeda.inter import expr as pyeda_expr
        for gate_name, encrypted_expr_str in results:
            encrypted_circuits[gate_name] = pyeda_expr(encrypted_expr_str)

        return encrypted_circuits


if __name__ == "__main__":
    logging.basicConfig(level=logging.DEBUG)
    logging.debug("start \n\n")
    cur_dir = os.path.dirname(os.path.realpath(__file__))
    file_encryptor = BenchEncryptor(cur_dir + "/benchmarks/c17.bench")
    logging.debug(file_encryptor.encrypt_up_to_k_inputs(3))
    logging.debug("end \n\n")
import logging
import time
from typing import Callable, Dict, List
from pyeda.inter import (
    exprvar,
    Or,
    And,
    Not,
    Nand,
    expr2truthtable,
    truthtable2expr,
    espresso_tts,
    espresso_exprs,
)
from utils.logic import generate_input_logic_table
from pyeda.boolalg.table import truthtable
from pyeda.boolalg.expr import Expression
from pprint import pprint


def get_locked_circuit(
    inputs: List[str],  # contains the names of the inputs x
    outputs: List[str],  # contains the names of the outputs y
    output_fns: List[Callable],  # contains the output functions
    keys: List[str],  # contains the names of the keys. Example  k1, k2 , k3
    key_combinations: List[int],  # contains the key combinations made up of keys
) -> Dict[str, Expression]:
    """
    This function creates a locked (encrypted) circuit based on the provided inputs, outputs, output functions, keys, and key combinations.

    Parameters:
    inputs (List[str]): A list of strings representing the names of the inputs to the circuit.
    outputs (List[str]): A list of strings representing the names of the outputs from the circuit.
    output_fns (List[Callable]): A list of functions that compute the outputs based on the inputs.
    keys (List[str]): A list of strings representing the names of the keys used for encryption.
    key_combinations (List[int]): A list of integers representing the combinations of keys used for encryption.

    Returns:
    Dict[str, Expression]: A dictionary mapping from output names to their corresponding encrypted expressions.
    """
    logging.debug("locking circuit")
    logging.debug(f"inputs: {inputs},     outputs ={outputs}")
    start = time.time()
    # 1. generate the logic table for the original circuit ( transition table)
    transition_table = generate_input_logic_table(len(inputs))
    # generate what every output should be and append it ot the transition table
    for row in transition_table:
        for output_fn in output_fns:
            row.append(output_fn(*row))
    # pprint.pprint(transition_table)
    # 2. add the key to the logic table
    for i, row in enumerate(transition_table):
        # current key is made up of the current key combination and made up with the keys
        current_key = key_combinations[i % len(key_combinations)]
        # make the combination of the key bits
        key_bits = [
            int(x) for x in format(current_key, f"0{len(keys)}b")
        ]  # convert the key to binary

        # add key bits to the beginning of the row
        transition_table[i] = key_bits + row

    # add the logic for incorrect keys and output should be o.
    # when the key is incorrect the output should be 1
    # for i, row in enumerate(transition_table):
    #     current_key = key_combinations[i % len(key_combinations)]
    #     for key_ in key_combinations:
    #         # if output should be 0
    #         if key_ != current_key and row[-1] == 0:
    #             key_bits = [
    #                 int(x) for x in format(key_, f"0{len(keys)}b")
    #             ]  # convert the key to binary
    #             transition_table.append(
    #                 key_bits + row[: -len(outputs)] + [1] * len(outputs) # ! assuming only one output
    #             )

    # logging.debug("state transition table")
    # pprint(transition_table)
    pyeda_vars = {var: exprvar(var) for var in keys + inputs + outputs}

    # Initialize Boolean functions for each output
    bool_funcs: Dict[str, Expression] = {output: Or() for output in outputs}
    # Build Boolean expressions from the transition table
    for row in transition_table:
        condition = And(
            *[
                pyeda_vars[inp] if val else ~pyeda_vars[inp]
                for inp, val in zip(keys + inputs, row[: -len(outputs)])
            ]
        )
        for output, val in zip(outputs, row[-len(outputs) :]):
            if val:  #
                bool_funcs[output] |= condition

    # Simplify the Boolean expressions
    logging.debug(f"Time taken: {time.time() - start} seconds\n")
    simplified_funcs = {output: func.simplify() for output, func in bool_funcs.items()}
    # Print the simplified Boolean functions
    # for output, func in simplified_funcs.items():
    #     logging.debug(f"\n\n{output}: {func}")

    return simplified_funcs


if __name__ == "__main__":
    #
    #     exp = get_locked_circuit(
    #         inputs=["A", "B"],
    #         outputs=["Y"],
    #         output_fns=[lambda A, B: A | B],
    #         keys=["k1", "k2"],
    #         key_combinations=[1, 3],
    #     )["Y"]
    #
    #     logging.debug(str(espresso_exprs(exp)))
    #
    #     exp = get_locked_circuit(
    #         inputs=["A", "B"],
    #         outputs=["Y"],
    #         output_fns=[lambda A, B: A ^ B],
    #         keys=["k1", "k2"],
    #         key_combinations=[1, 0, 3, 1],
    #     )["Y"]
    #
    #     logging.debug(str(espresso_exprs(exp)))

    #     A, B, k1, k2 = map(exprvar, ["A", "B", "k1", "k2"])
    #     point = {
    #         A: 0,
    #         B: 0,
    #         k1: 0,
    #         k2: 1,
    #     }
    #
    #     logging.debug(exp.restrict(point))
    #     tt = expr2truthtable(exp)
    #     logging.debug(tt)
    #     expression = truthtable2expr(tt)
    #     logging.debug(expression.simplify())

    """C17
    G22gat = nand(nand(G1gat, G3gat), nand(G2gat, nand(G3gat, G6gat)))
    G23gat = nand(nand(G2gat, nand(G3gat, G6gat)), nand(nand(G3gat, G6gat), G7gat))
    """

    class C17:
        @staticmethod
        def G22gat(G1gat_, G2gat_, G3gat_, G6gat_):
            G1gat, G2gat, G3gat, G6gat = map(
                exprvar, ["G1gat", "G2gat", "G3gat", "G6gat"]
            )
            point = {
                G1gat: G1gat_,
                G2gat: G2gat_,
                G3gat: G3gat_,
                G6gat: G6gat_,
            }
            expr = Nand(Nand(G1gat, G3gat), Nand(G2gat, Nand(G3gat, G6gat)))
            return int(expr.restrict(point))

        @staticmethod
        def G23gat(G2gat_, G3gat_, G6gat_, G7gat_):
            G2gat, G3gat, G6gat, G7gat = map(
                exprvar, ["G2gat", "G3gat", "G6gat", "G7gat"]
            )
            point = {
                G2gat: G2gat_,
                G3gat: G3gat_,
                G6gat: G6gat_,
                G7gat: G7gat_,
            }
            expr = Nand(
                Nand(G2gat, Nand(G3gat, G6gat)), Nand(Nand(G3gat, G6gat), G7gat)
            )
            return int(expr.restrict(point))

    G22gat = get_locked_circuit(
        inputs=["G1gat", "G2gat", "G3gat", "G6gat"],
        outputs=["G22gat"],
        output_fns=[C17.G22gat],
        keys=["k1", "k2"],
        key_combinations=[1, 3],
    )["G22gat"]
    logging.debug(f"G22gat: { espresso_exprs(G22gat) }\n")
    # G22gat: (Or(And(G1gat, G3gat, ~G6gat, ~k1, k2), And(G1gat, G3gat, G6gat, k1, k2), And(G2gat, ~G3gat, G6gat, k1, k2), And(G2gat, ~G6gat, ~k1, k2)),)

    G23gat = get_locked_circuit(
        inputs=["G2gat", "G3gat", "G6gat", "G7gat"],
        outputs=["G23gat"],
        output_fns=[C17.G23gat],
        keys=["k1", "k2"],
        key_combinations=[1, 3],
    )["G23gat"]
    logging.debug(f"G23gat: { espresso_exprs(G23gat) }\n")
    # G23gat: (Or(And(G2gat, ~G6gat, ~k1, k2, ~G7gat), And(~G3gat, k1, k2, G7gat), And(G2gat, ~G3gat, ~k1, k2, ~G7gat), And(~G6gat, k1, k2, G7gat)),)
    logging.debug("Done")

    # G223gat: Not(And(Not(And(~G1gat, G4gat)), Not(And(~G11gat, G17gat)), Not(And(~G24gat, G30gat)), Not(And(~G37gat, G43gat)), Not(And(~G50gat, G56gat)), Not(And(~G63gat, G69gat)), Not(And(~G76gat, G82gat)), Not(And(~G89gat, G95gat)), Not(And(~G102gat, G108gat))))
    # fmt: off
    class c432:
        @staticmethod
        def G223gat(   G1gat_, G4gat_, G11gat_, G17gat_, G24gat_, G30gat_, G37gat_, G43gat_, G50gat_, G56gat_, G63gat_, G69gat_, G76gat_, G82gat_, G89gat_, G95gat_, G102gat_, G108gat_, ):
            (
             G1gat, G4gat, G11gat, G17gat, G24gat, G30gat, G37gat, G43gat, G50gat, G56gat, G63gat, G69gat, G76gat, G82gat, G89gat, G95gat, G102gat, G108gat,
            ) = map( exprvar, [ "G1gat", "G4gat", "G11gat", "G17gat", "G24gat", "G30gat", "G37gat", "G43gat", "G50gat", "G56gat", "G63gat", "G69gat", "G76gat", "G82gat", "G89gat", "G95gat", "G102gat", "G108gat" ], )
            point = { G1gat: G1gat_, G4gat: G4gat_, G11gat: G11gat_, G17gat: G17gat_, G24gat: G24gat_, G30gat: G30gat_, G37gat: G37gat_, G43gat: G43gat_, G50gat: G50gat_, G56gat: G56gat_, G63gat: G63gat_, G69gat: G69gat_, G76gat: G76gat_, G82gat: G82gat_, G89gat: G89gat_, G95gat: G95gat_, G102gat: G102gat_, G108gat: G108gat_,}
            expr = Nand( Nand( G1gat, G4gat, ), Nand( G11gat, G17gat, ), Nand( G24gat, G30gat, ), Nand( G37gat, G43gat, ), Nand( G50gat, G56gat, ), Nand( G63gat, G69gat, ), Nand( G76gat, G82gat, ), Nand( G89gat, G95gat, ), Nand( G102gat, G108gat, ))
            return int(expr.restrict(point))

    G223gat = get_locked_circuit(
        inputs=[ "G1gat", "G4gat", "G11gat", "G17gat", "G24gat", "G30gat", "G37gat", "G43gat", "G50gat", "G56gat", "G63gat", "G69gat", "G76gat", "G82gat", "G89gat", "G95gat", "G102gat", "G108gat"],
        outputs=["G223gat"],
        output_fns=[c432.G223gat],
        keys=["k1", "k2"],
        key_combinations=[1, 3],
    )["G223gat"]
    logging.debug("Done 1 ")
    logging.debug(f"G223gat: { G223gat }")
    # fmt: one
    logging.debug('Done')

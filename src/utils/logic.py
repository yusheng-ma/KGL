import logging
from typing import Any, Dict, List, TypedDict, Union
from pyeda.inter import exprvar, And, Or, Not, Nand, Nor, Xor, espresso_exprs, Xnor
from pyeda.boolalg.expr import Expression
from pprint import pprint
import unittest


def generate_input_logic_table(number_of_inputs: int):
    return [
        [int(i) for i in format(x, f"0{number_of_inputs}b")]
        for x in range(2**number_of_inputs)
    ]


# pprint(generate_input_logic_table(5))


def simplify_exp(exp: Expression) -> Expression:
    """
    This function attempts to simplify a given PyEDA expression.
    If the expression cannot be simplified, it is returned as is.

    :param exp: A PyEDA expression.
    :return: A simplified PyEDA expression, or the original expression if it cannot be simplified.
    """
    try:
        dnf_exp = exp.simplify()  # Using to much memory.to_dnf()
        # logging.debug(f"before: {exp}")
        exp_ = espresso_exprs(dnf_exp)[0]
        return exp_
    except Exception as e:
        return exp


def convert_str_to_expr(
    gate: str, gate_connections: Dict[str, tuple[str, tuple[str, str]]]
) -> Union[Expression, None]:
    """
    This function converts a string expression(and map, it needs the gate name and the nested gates in gate_connections) into a PyEDA expression.
    It is expected that the expression is correct.

    :param gate: The name of the gate.
    :param gate_connections: A dictionary where the keys are the names of the gates and the values are tuples containing the gate type and the inputs to the gate.
    :return: A simplified PyEDA expression for the boolean function of the gate.
    """
    # Base case: if the gate is an input, return the gate itself
    logging.debug(f"gate = {gate}")
    if gate not in gate_connections:
        logging.debug("gate not in gate_connections")
        # logging.debug(gate)
        return exprvar(gate)

    # Recursive case: simplify the function by replacing the gate with its inputs
    gate_type, inputs = gate_connections[gate]
    if gate_type.lower() == "dff":
        return None
    simplified_inputs = [convert_str_to_expr(inp, gate_connections) for inp in inputs]

    if gate_type.lower() == "or":
        return Or(*simplified_inputs)
    elif gate_type.lower() == "and":
        return And(*simplified_inputs)
    elif gate_type.lower() == "nand":
        return Nand(*simplified_inputs)
    elif gate_type.lower() == "nor":
        return Nor(*simplified_inputs)
    elif gate_type.lower() == "xor":
        return Xor(*simplified_inputs)
    elif gate_type.lower() == "not":
        assert len(simplified_inputs) == 1
        return Not(simplified_inputs[0])
    elif gate_type.lower() == "xnor":
        return Xnor(*simplified_inputs)
    elif gate_type.lower() == "buf":
        assert len(simplified_inputs) == 1
        return simplified_inputs[0]
    else:
        raise ValueError(f"Unsupported gate type: {gate_type}")


gate_types = ["nand", "nor", "and", "or", "xor", "not", "xnor", "buf", "dff"]


from typing import Dict, List, Tuple
import re


def convert_s_to_map(
    s_str: str = "Or( And(~G1gat, ~G3gat, ~keyinput0, ), And(G1gat, ~G3gat, ~keyinput0, ), And(~G1gat, G3gat, ~keyinput0, ) )",
    count=0,
) -> Dict[str, Tuple[str, tuple[str, str]]]:
    gate_map = {}

    # Convert all the GateTypes to lowercase
    s_str = re.sub(
        r"\b\w+\b",
        lambda match: (
            match.group(0).lower()
            if match.group(0).lower() in gate_types
            else match.group(0)
        ),
        s_str,
    )

    # convert all the "~input" to not( input ). NOte int can
    s_str = re.sub(r"~\w+", lambda match: f"not({match.group(0)[1:]})", s_str)
    # logging.debug("s = ", s_str)

    gate_count = count

    def traverse(s: str):  # return the name of the gate
        nonlocal gate_count
        if "(" not in s:
            return s  # base case there is no nested gate

        # get the outer expression
        gate_type = s.split("(")[0]

        inputs = extract_gate_inputs(s)
        input_names = [traverse(inp) for inp in inputs]

        gate_name = f"{gate_type}_{gate_count}"
        gate_count += 1
        gate_map[gate_name] = (gate_type, tuple(input_names))
        return gate_name

    traverse(s_str)

    return gate_map


def extract_gate_inputs(expression):
    # Match the gate and its contents using a regular expression
    match = re.search(r"(and|or|xor|not|nand|dff)\((.*)\)", expression)
    if not match:
        return []

    # Extract the contents within the gate
    contents = match.group(2)

    # Split the contents based on commas, taking into account nested structures
    inputs = []
    depth = 0
    start = 0
    for i, char in enumerate(contents):
        if char == "(":
            depth += 1
        elif char == ")":
            depth -= 1
        elif char == "," and depth == 0:
            inputs.append(contents[start:i].strip())
            start = i + 1

    # Add the last segment if there is any
    if start < len(contents):
        inputs.append(contents[start:].strip())

    return inputs


class TestLogic(unittest.TestCase):
    def test_infix_to_rpn(self):
        self.assertEqual(
            convert_s_to_map("or( and(not(int1), int2),  int3)"),
            {
                "not_0": ("not", ("int1",)),
                "and_1": ("and", ("not_0", "int2")),
                "or_2": ("or", ("and_1", "int3")),
            },
        )

    def test_extract_gate_inputs(self):
        # fmt: off
        self.assertEqual( extract_gate_inputs("and( not(k1), x1, x2, and(x1,x2) )"), ["not(k1)", "x1", "x2", "and(x1,x2)"])
        self.assertEqual( extract_gate_inputs("or( x1, not(x2), and(x3,x4) )"),  ['x1', 'not(x2)', 'and(x3,x4)'],)
        self.assertEqual( extract_gate_inputs("xor( nand(x1,x2), or(x3,x4) )"),  ['nand(x1,x2)', 'or(x3,x4)'],)
        self.assertEqual( extract_gate_inputs("not( and(x1,x2) )"),  ['and(x1,x2)'],)
        self.assertEqual( extract_gate_inputs("nand( x1, xor(x2,x3) )"),  ['x1', 'xor(x2,x3)'])
        # fmt: on


if __name__ == "__main__":
    unittest.main()

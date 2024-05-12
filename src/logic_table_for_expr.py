from pyeda.inter import *


def generate_truth_table(expr):
    # Convert the expression to a truth table
    truth_table = expr2truthtable(expr)

    # Get the input variables
    inputs = truth_table.inputs

    # Print the header
    print(" ".join(str(inp) for inp in inputs) + " | Output")

    # Print each row of the truth table
    for point in iter_points(inputs):
        # Print the row
        print(
            " ".join(
                str(point[inp]) for inp in inputs
            )  # Print in the order of the inputs
            + " | "
            + str(truth_table.restrict(point))  # Print the output
        )


# Example usage
G2, G3, G6 = map(exprvar, ["G2", "G3", "G6"])
expr = Nand(Nand(G3, G6), G2)
generate_truth_table(expr)

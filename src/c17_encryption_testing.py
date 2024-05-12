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


class C17:
    @staticmethod
    def G22gat(G1gat_, G2gat_, G3gat_, G6gat_):
        G1gat, G2gat, G3gat, G6gat = map(exprvar, ["G1gat", "G2gat", "G3gat", "G6gat"])
        point = {
            G1gat: G1gat_,
            G2gat: G2gat_,
            G3gat: G3gat_,
            G6gat: G6gat_,
        }
        expr = Not(And(Not(And(G2gat, Not(And(G3gat, G6gat)))), Not(And(G1gat, G3gat))))
        return int(expr.restrict(point))

    @staticmethod
    def G23gat(G2gat_, G3gat_, G6gat_, G7gat_):
        G2gat, G3gat, G6gat, G7gat = map(exprvar, ["G2gat", "G3gat", "G6gat", "G7gat"])
        point = {
            G2gat: G2gat_,
            G3gat: G3gat_,
            G6gat: G6gat_,
            G7gat: G7gat_,
        }
        expr = Not(
            And(
                Not(And(G7gat, Not(And(G3gat, G6gat)))),
                Not(And(G2gat, Not(And(G3gat, G6gat)))),
            )
        )
        return int(expr.restrict(point))


class C17_k2_locked_g10_g11:
    """This encryption only encrypted the first gate G10 or o[0]"""

    # key = 1, 3, 2, 3 # G10
    # G1gat, G3gat, k1, k2
    # 0 0 - 0 1
    # 0 1 - 1 1
    # 1 0 - 1 0
    # 1 1 - 1 1

    # Locking G11
    # G3gat, G6gat,  k3, k4
    # 0 0 - 0 1
    # 0 1 - 1 1
    # 1 0 - 1 0
    # 1 1 - 1 1
    input_key_combinations = [
        # G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4
        [0, 0, 0, 0, 0, 0, 1, 0, 1],
        [0, 0, 0, 0, 1, 0, 1, 0, 1],
        [0, 0, 0, 1, 0, 0, 1, 1, 1],
        [0, 0, 0, 1, 1, 0, 1, 1, 1],
        [0, 0, 1, 0, 0, 1, 1, 1, 0],
        [0, 0, 1, 0, 1, 1, 1, 1, 0],
        [0, 0, 1, 1, 0, 1, 1, 1, 1],
        [0, 0, 1, 1, 1, 1, 1, 1, 1],
        [0, 1, 0, 0, 0, 0, 1, 0, 1],
        [0, 1, 0, 0, 1, 0, 1, 0, 1],
        [0, 1, 0, 1, 0, 0, 1, 1, 1],
        [0, 1, 0, 1, 1, 0, 1, 1, 1],
        [0, 1, 1, 0, 0, 1, 1, 1, 0],
        [0, 1, 1, 0, 1, 1, 1, 1, 0],
        [0, 1, 1, 1, 0, 1, 1, 1, 1],
        [0, 1, 1, 1, 1, 1, 1, 1, 1],
        [1, 0, 0, 0, 0, 1, 0, 0, 1],
        [1, 0, 0, 0, 1, 1, 0, 0, 1],
        [1, 0, 0, 1, 0, 1, 0, 1, 1],
        [1, 0, 0, 1, 1, 1, 0, 1, 1],
        [1, 0, 1, 0, 0, 1, 1, 1, 0],
        [1, 0, 1, 0, 1, 1, 1, 1, 0],
        [1, 0, 1, 1, 0, 1, 1, 1, 1],
        [1, 0, 1, 1, 1, 1, 1, 1, 1],
        [1, 1, 0, 0, 0, 1, 0, 0, 1],
        [1, 1, 0, 0, 1, 1, 0, 0, 1],
        [1, 1, 0, 1, 0, 1, 0, 1, 1],
        [1, 1, 0, 1, 1, 1, 0, 1, 1],
        [1, 1, 1, 0, 0, 1, 1, 1, 0],
        [1, 1, 1, 0, 1, 1, 1, 1, 0],
        [1, 1, 1, 1, 0, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 1],
    ]
    # fmt: on

    @staticmethod
    def G22gat(G1gat_, G2gat_, G3gat_, G6gat_, G7gat_, k1_, k2_, k3_, k4_):
        G1gat, G2gat, G3gat, G6gat, k1, k2, k3, k4 = map(
            exprvar, ["G1gat", "G2gat", "G3gat", "G6gat", "k1", "k2", "k3", "k4"]
        )
        point = {
            G1gat: G1gat_,
            G2gat: G2gat_,
            G3gat: G3gat_,
            G6gat: G6gat_,
            k1: k1_,
            k2: k2_,
            k3: k3_,
            k4: k4_,
        }
        expr = Nand(
            Or(
                And(~(G1gat), ~(G3gat), ~(k1), k2),
                And(G1gat, ~(G3gat), k1, ~(k2)),
                And(~(G1gat), G3gat, k1, k2),
            ),
            Nand(
                G2gat,
                Or(
                    And(~(G3gat), ~(G6gat), ~(k3), k4),
                    And(~(G3gat), G6gat, k3, (k4)),  # This should be 11
                    And(G3gat, ~(G6gat), k3, ~k4),
                ),
            ),
        )
        return int(expr.restrict(point))

    @staticmethod
    def G23gat(G1gat_, G2gat_, G3gat_, G6gat_, G7gat_, k1_, k2_, k3_, k4_):
        G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4 = map(
            exprvar,
            ["G1gat", "G2gat", "G3gat", "G6gat", "G7gat", "k1", "k2", "k3", "k4"],
        )
        point = {
            G1gat: G1gat_,
            G2gat: G2gat_,
            G3gat: G3gat_,
            G6gat: G6gat_,
            G7gat: G7gat_,
            k1: k1_,
            k2: k2_,
            k3: k3_,
            k4: k4_,
        }
        expr = Nand(
            Nand(
                G2gat,
                Or(
                    And(~(G3gat), ~(G6gat), ~(k3), k4),
                    And(~(G3gat), G6gat, k3, (k4)),  # This should be 11
                    And(G3gat, ~(G6gat), k3, ~k4),
                ),
            ),
            Nand(
                Or(
                    And(~(G3gat), ~(G6gat), ~(k3), k4),
                    And(~(G3gat), G6gat, k3, (k4)),
                    And(G3gat, ~(G6gat), k3, ~k4),
                ),
                G7gat,
            ),
        )

        return int(expr.restrict(point))


# fmt: off
def test_c17_g10_g11():
    print("test_c17_g10_g11")
    input_table = C17_k2_locked_g10_g11.input_key_combinations
    print('\n-------------------------------------------' )
    for G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4 in input_table:
        print(f"{C17.G22gat(G1gat, G2gat, G3gat, G6gat)} & {C17.G23gat(G2gat, G3gat, G6gat, G7gat)} & {C17_k2_locked_g10_g11.G22gat(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4)} & {C17_k2_locked_g10_g11.G23gat(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4)}")
        if C17.G22gat(G1gat, G2gat, G3gat, G6gat) != C17_k2_locked_g10_g11.G22gat(
            G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4
        ):
            print("**G22gat is not correct")
            print(str(G1gat) + ", " + str(G2gat) + ", " + str(G3gat) + ", " + str(G6gat) + ", " + str(G7gat) + ", " + str(k1) + ", " + str(k2) + ", " + str(k3) + ", " + str(k4))
            print(f"the value on original cirucit = {C17.G22gat(G1gat, G2gat, G3gat, G6gat)}, the value on the locked circuit = {C17_k2_locked_g10_g11.G22gat(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4)}")
            # return False
        if C17.G23gat(G2gat, G3gat, G6gat, G7gat) != C17_k2_locked_g10_g11.G23gat(
            G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4
        ):
            print("**G23gat is not correct")
            print(str(G1gat) + ", " + str(G2gat) + ", " + str(G3gat) + ", " + str(G6gat) + ", " + str(G7gat) + ", " + str(k1) + ", " + str(k2) + ", " + str(k3) + ", " + str(k4))
            print(f"the value on original cirucit = {C17.G23gat(G2gat, G3gat, G6gat, G7gat)}, the value on the locked circuit = {C17_k2_locked_g10_g11.G23gat(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4)}")
            # return False
    print("-------------------------------------------")
    i = 0  # check for when keys is not correct
    j = 0
    for G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4 in generate_input_logic_table(
        9
    ):
        if [G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4] not in input_table:
            # fmt: off
            j+=1 
            if C17_k2_locked_g10_g11.G22gat(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2, k3, k4) == C17.G22gat(G1gat, G2gat, G3gat, G6gat):
                # print("**Keys are not correct for G22gat")
                # print(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2)
                # return False
                i+=1
    print(
        "it failed on ", i, " cases"
    )  # The reason why its getting hte same behavior is when is output is 1 ( Nand )
    print("the total key combinations that are not in the input table are ", j)
    # fmt: on
    return True


print(test_c17_g10_g11())
# fmt: on


class C17_partially_encrypted_g16:
    """This encryption only encrypted the first gate G10 or o[0]"""

    # Key is 01, 10 in the order of G1gat, G11gat as shown in table below
    # G1gat, G3gat, k1, k2
    #

    input_key_combinations = [
        # G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2
        [0, 0, 0, 0, 0, 1, 1],
        [0, 0, 0, 0, 1, 1, 1],
        [0, 0, 0, 1, 0, 1, 1],
        [0, 0, 0, 1, 1, 1, 1],
        [0, 0, 1, 0, 0, 1, 1],
        [0, 0, 1, 0, 1, 1, 1],
        [0, 0, 1, 1, 0, 0, 1],
        [0, 0, 1, 1, 1, 0, 1],
        [0, 1, 0, 0, 0, 0, 1],
        [0, 1, 0, 0, 1, 0, 1],
        [0, 1, 0, 1, 0, 0, 1],
        [0, 1, 0, 1, 1, 0, 1],
        [0, 1, 1, 0, 0, 1, 1],
        [0, 1, 1, 0, 1, 1, 1],
        [0, 1, 1, 1, 0, 1, 0],
        [0, 1, 1, 1, 1, 1, 0],
        [1, 0, 0, 0, 0, 1, 1],
        [1, 0, 0, 0, 1, 1, 1],
        [1, 0, 0, 1, 0, 1, 1],
        [1, 0, 0, 1, 1, 1, 1],
        [1, 0, 1, 0, 0, 1, 1],
        [1, 0, 1, 0, 1, 1, 1],
        [1, 0, 1, 1, 0, 0, 1],
        [1, 0, 1, 1, 1, 0, 1],
        [1, 1, 0, 0, 0, 1, 0],
        [1, 1, 0, 0, 1, 1, 0],
        [1, 1, 0, 1, 0, 1, 0],
        [1, 1, 0, 1, 1, 1, 0],
        [1, 1, 1, 0, 0, 1, 1],
        [1, 1, 1, 0, 1, 1, 1],
        [1, 1, 1, 1, 0, 1, 0],
        [1, 1, 1, 1, 1, 1, 0],
    ]

    @staticmethod
    def G22gat(G1gat_, G2gat_, G3gat_, G6gat_, G7gat_, k1_, k2_):
        """Or (    And( ~k1, k2, ~a0, ~a1),   And(k1, k2, b) ,   And(k1, ~k2, a0, a1)  )"""
        G1gat, G2gat, G3gat, G6gat, k1, k2 = map(
            exprvar, ["G1gat", "G2gat", "G3gat", "G6gat", "k1", "k2"]
        )
        point = {
            G1gat: G1gat_,
            G2gat: G2gat_,
            G3gat: G3gat_,
            G6gat: G6gat_,
            k1: k1_,
            k2: k2_,
        }
        expr = Not(
            And(
                Or(
                    And(k2, k1, ~G2gat, Not(And(G3gat, G6gat))),
                    And(G3gat, ~k2, G6gat, k1, G2gat),
                    And(G3gat, ~k1, k2, ~G2gat, G6gat),
                ),
                Not(And(G1gat, G3gat)),
            )
        )
        return int(expr.restrict(point))

    @staticmethod
    def G23gat(G1gat_, G2gat_, G3gat_, G6gat_, G7gat_, k1_, k2_):
        G1gat, G2gat, G3gat, G6gat, k1, k2, G7gat = map(
            exprvar, ["G1gat", "G2gat", "G3gat", "G6gat", "k1", "k2", "G7gat"]
        )
        point = {
            G1gat: G1gat_,
            G2gat: G2gat_,
            G3gat: G3gat_,
            G6gat: G6gat_,
            G7gat: G7gat_,
            k1: k1_,
            k2: k2_,
        }
        expr = Not(
            And(
                Or(
                    And(k2, k1, ~G2gat, Not(And(G3gat, G6gat))),
                    And(G3gat, ~k2, G6gat, k1, G2gat),
                    And(G3gat, ~k1, k2, ~G2gat, G6gat),
                ),
                Not(And(G7gat, Not(And(G3gat, G6gat)))),
            )
        )
        return int(expr.restrict(point))


class C17_partially_encrypted_g10:
    """This encryption only encrypted the first gate G10 or o[0]"""

    # Key is 01, 11, 10, 11  in the order of G1gat, G3gat as shown in table below
    # G1gat, G3gat, k1, k2
    # 0 1 - 0 1
    # 0 0 - 1 1
    # 1 0 - 1 0
    # 1 1 - 1 1
    input_key_combinations = [
        # G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2
        # a[0], a[1], a[2], a[3], a[4]
        [0, 0, 0, 0, 0, 0, 1],
        [0, 0, 0, 0, 1, 0, 1],
        [0, 0, 0, 1, 0, 0, 1],
        [0, 0, 0, 1, 1, 0, 1],
        [0, 0, 1, 0, 0, 1, 1],
        [0, 0, 1, 0, 1, 1, 1],
        [0, 0, 1, 1, 0, 1, 1],
        [0, 0, 1, 1, 1, 1, 1],
        [0, 1, 0, 0, 0, 0, 1],
        [0, 1, 0, 0, 1, 0, 1],
        [0, 1, 0, 1, 0, 0, 1],
        [0, 1, 0, 1, 1, 0, 1],
        [0, 1, 1, 0, 0, 1, 1],
        [0, 1, 1, 0, 1, 1, 1],
        [0, 1, 1, 1, 0, 1, 1],
        [0, 1, 1, 1, 1, 1, 1],
        [1, 0, 0, 0, 0, 1, 0],
        [1, 0, 0, 0, 1, 1, 0],
        [1, 0, 0, 1, 0, 1, 0],
        [1, 0, 0, 1, 1, 1, 0],
        [1, 0, 1, 0, 0, 1, 1],
        [1, 0, 1, 0, 1, 1, 1],
        [1, 0, 1, 1, 0, 1, 1],
        [1, 0, 1, 1, 1, 1, 1],
        [1, 1, 0, 0, 0, 1, 0],
        [1, 1, 0, 0, 1, 1, 0],
        [1, 1, 0, 1, 0, 1, 0],
        [1, 1, 0, 1, 1, 1, 0],
        [1, 1, 1, 0, 0, 1, 1],
        [1, 1, 1, 0, 1, 1, 1],
        [1, 1, 1, 1, 0, 1, 1],
        [1, 1, 1, 1, 1, 1, 1],
    ]

    @staticmethod
    def G22gat(G1gat_, G2gat_, G3gat_, G6gat_, G7gat_, k1_, k2_):
        """Or (    And( ~k1, k2, ~a0, ~a1),   And(k1, k2, b) ,   And(k1, ~k2, a0, a1)  )"""
        G1gat, G2gat, G3gat, G6gat, k1, k2 = map(
            exprvar, ["G1gat", "G2gat", "G3gat", "G6gat", "k1", "k2"]
        )
        point = {
            G1gat: G1gat_,
            G2gat: G2gat_,
            G3gat: G3gat_,
            G6gat: G6gat_,
            k1: k1_,
            k2: k2_,
        }
        expr = Not(
            And(
                Or(
                    And(k1, k2, ~G1gat, G3gat),
                    And(k1, ~k2, G1gat, ~G3gat),
                    And(~k1, ~k2, G1gat, G3gat),
                    And(~k1, k2, G1gat, G3gat),
                    And(k1, ~k2, G1gat, G3gat),
                    And(~k1, k2, ~G1gat, ~G3gat),
                ),
                Not(And(G2gat, Not(And(G3gat, G6gat)))),
            )
        )
        return int(expr.restrict(point))

    @staticmethod
    def G23gat(G1gat_, G2gat_, G3gat_, G6gat_, G7gat_, k1_, k2_):
        G1gat, G2gat, G3gat, G6gat, k1, k2, G7gat = map(
            exprvar, ["G1gat", "G2gat", "G3gat", "G6gat", "k1", "k2", "G7gat"]
        )
        point = {
            G1gat: G1gat_,
            G2gat: G2gat_,
            G3gat: G3gat_,
            G6gat: G6gat_,
            G7gat: G7gat_,
            k1: k1_,
            k2: k2_,
        }
        expr = Not(
            And(
                Not(And(G7gat, Not(And(G3gat, G6gat)))),
                Not(And(G2gat, Not(And(G3gat, G6gat)))),
            )
        )
        return int(expr.restrict(point))


def test_c17():
    print("tet_c17")
    input_table = C17_partially_encrypted_g10.input_key_combinations
    for G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2 in input_table:
        if C17.G22gat(G1gat, G2gat, G3gat, G6gat) != C17_partially_encrypted_g10.G22gat(
            G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2
        ):
            print("**G22gat is not correct")
            print(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2)
            return False
        if C17.G23gat(G2gat, G3gat, G6gat, G7gat) != C17_partially_encrypted_g10.G23gat(
            G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2
        ):
            print("**G23gat is not correct")
            print(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2)
            return False

    i = 0  # check for when keys is not correct
    j = 0
    for G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2 in generate_input_logic_table(7):
        if [G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2] not in input_table:
            # fmt: off
            j+=1 
            if C17_partially_encrypted_g10.G22gat(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2) == C17.G22gat(G1gat, G2gat, G3gat, G6gat):
                print("**Keys are not correct for G22gat")
                print(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2)
                # return False
                i+=1
    print(
        "it failed on ", i, " cases"
    )  # The reason why its getting hte same behavior is when is output is 1 ( Nand )
    print("the total key combinations that are not in the input table are ", j)
    # fmt: on
    return True


# print(test_c17())


def test_c17_g16():
    print("tet_c17")
    input_table = C17_partially_encrypted_g16.input_key_combinations
    for G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2 in input_table:
        if C17.G22gat(G1gat, G2gat, G3gat, G6gat) != C17_partially_encrypted_g16.G22gat(
            G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2
        ):
            print("**G22gat is not correct")
            print(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2)
            return False
        if C17.G23gat(G2gat, G3gat, G6gat, G7gat) != C17_partially_encrypted_g16.G23gat(
            G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2
        ):
            print("**G23gat is not correct")
            print(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2)
            return False

    i = 0  # check for when keys is not correct
    j = 0
    for G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2 in generate_input_logic_table(7):
        if [G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2] not in input_table:
            # fmt: off
            j+=1 
            if C17_partially_encrypted_g16.G22gat(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2) == C17.G22gat(G1gat, G2gat, G3gat, G6gat):
                print("**Keys are not correct for G22gat")
                print(G1gat, G2gat, G3gat, G6gat, G7gat, k1, k2)
                # return False
                i+=1
    print(
        "it failed on ", i, " cases"
    )  # The reason why its getting hte same behavior is when is output is 1 ( Nand )
    print("the total key combinations that are not in the input table are ", j)
    # fmt: on
    return True


print(test_c17_g16())


def change_to_and():
    G1gat, G2gat, G3gat, G6gat, k1, k2 = map(
        exprvar, ["G1gat", "G2gat", "G3gat", "G6gat", "k1", "k2"]
    )
    expr: Expression = Or(
        And(~k1, k2, ~G1gat, ~G3gat),
        And(k1, k2, G2gat),
        And(k1, ~k2, G3gat, G6gat),
    )

    expr = expr.simplify()
    print("expr:", expr)

    # And(
    #     Or(~G1gat, G2gat, G3gat),
    #     Or(~G1gat, G2gat, G6gat),
    #     Or(~G1gat, k1),
    #     Or(~G1gat, G2gat, ~k2),
    #     Or(G2gat, ~G3gat, G6gat),
    #     Or(~G3gat, k1),
    #     Or(G2gat, ~G3gat, ~k2),
    #     Or(G2gat, G3gat, ~k1),
    #     Or(G2gat, G6gat, ~k1),
    #     Or(G2gat, ~k1, ~k2),
    #     Or(G3gat, k2),
    #     Or(G6gat, k2),
    #     Or(k1, k2),
    # )

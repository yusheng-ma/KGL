""" This file takes in a verilog file. and returns the number of inputs in the file. """

from math import log, ceil
import argparse

parser = argparse.ArgumentParser(description="Reads then number of inputs of a file ")
parser.add_argument("file_name", type=str, help="The file location")  # required=True

args = parser.parse_args()
file_name = args.file_name

from BenchParser import BenchParser


bench_parser = BenchParser(file_name)
number_of_inputs = len(bench_parser.inputs)


class KeyGenerator:
    @staticmethod
    def generate_keys(number_of_keys: int, bit_size: int):
        import random

        keys = []
        for i in range(number_of_keys):
            keys.append(  # generate a random number between 0 and 2^bit_size -1
                random.randint(0, (2**bit_size) - 1)
            )
        return keys


# fmt: off
x = number_of_inputs
y = ceil(log(x + 8, 1.05) - 49)
# is the number of total bits for the circuit
# made up of    bits * number of gates locked
# number of gates locked = 10
# fmt: on

keys = KeyGenerator.generate_keys(number_of_keys=3, bit_size=max(1, y // 10))
# Note this k = 4 is the number of gates to lock, 4 bits are needed to make up 15 keys

# print("keys = ", keys)
# max_key_bit_size = max([len(bin(n)) - 2 for n in keys])
# print(f"max_key_bit_size: {max_key_bit_size}")
exit(str(keys).replace("]", "").replace("[", "").replace(",", " "))

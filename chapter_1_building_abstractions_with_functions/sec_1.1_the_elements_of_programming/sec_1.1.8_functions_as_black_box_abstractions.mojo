# All the programs in section 1.1.8 - Functions as Black-Box Abstractions
# Copyright (C) 2024  Brian-M-J
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/gpl-3.0.html>.

from math import exp


# TODO: Move this to mojo_slang
# TODO: This fails for the same reason as log in sec 1.1.4; find out why.
# error: invalid call to 'exp': callee expects 2 parameters, but 0 were specified
def math_exp(x):
    return math.exp(x)


def square(x):
    return x * x


def abs(x):
    return x if x >= 0 else -x


def double(x):
    return x + x


def square_v2(x):
    return math_exp(double(math_log(x)))


# sqrt with nested Functions
# the functions it needs are declared internally and not available to outsiders
# Mojo uses indentation (the alignment of lines of code) to denote block scope
# instead of braces
# TODO: Fix this after 1.1.7 gets fixed
def sqrt(x):
    def is_good_enough(guess, x):
        return abs(square(guess) - x) < 0.001

    def improve(guess, x):
        return average(guess, x / guess)

    def sqrt_iter(guess, x):
        return guess if is_good_enough(guess, x) else sqrt_iter(improve(guess, x), x)

    return sqrt_iter(1, x)


# sqrt with x being a free name and lexical scoping
def sqrt_v2(x):
    def is_good_enough(guess):
        return abs(square(guess) - x) < 0.001

    def improve(guess):
        return average(guess, x / guess)

    def sqrt_iter(guess):
        return guess if is_good_enough(guess) else sqrt_iter(improve(guess))

    return sqrt_iter(1)


def main():
    print(square(10.0))
    print(square_v2(10.0))
    # The outputs of both should be the same
    # TODO: Write the actual outputs once the code is fixed

# All the programs in section 1.1.4 - Compound Functions
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


def square(x):
    return x * x


# The following also works:
# def square(x): return x * x


def sum_of_squares(x, y):
    return square(x) + square(y)


def f(a):
    return sum_of_squares(a + 1, a * 2)


def main():
    print(square(21))  # Prints 441

    print(square(2 + 5))  # Prints 49
    print(square(square(3)))  # Prints 81

    print(sum_of_squares(3, 4))  # Prints 25
    print(f(5))  # Prints 136

    # The function to calculate the natural log of a number is the math.log().
    # It can be imported using:
    # from math import log

    # And called using:
    # log(<argument>)

    # TODO: The above code for using log does not work and I don't know why.
    # error: invalid call to 'log': callee expects 2 parameters, but 0 were specified
    # TODO: implement math_log the same as in slang

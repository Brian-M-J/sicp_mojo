# All the programs in section 1.1.7 - Example: Square Roots by Newton’s Method
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

# Reusing square and abs which were defined earlier


def square(x):
    return x * x


def abs(x):
    return x if x >= 0 else -x


def is_good_enough(guess, x):
    return abs(square(guess) - x) < 0.001


def improve(guess, x):
    return average(guess, x / guess)


def sqrt_iter(guess, x):
    return guess if is_good_enough(guess, x) else sqrt_iter(improve(guess, x), x)


def average(x, y):
    return (x + y) / 2


def sqrt(x):
    return sqrt_iter(1, x)


def main():
    print(sqrt(9))  # Prints 3.00009155413138
    print(sqrt(100 + 37))  # Prints 11.704699917758145
    print(sqrt(sqrt(2) + sqrt(3)))  # Prints 1.7739279023207892
    print(square(sqrt(1000)))  # Prints 1000.000369924366
    # TODO: The code does not work. I have filed an issue: https://github.com/modularml/mojo/issues/2224

# Code for Exercises
# Exercise 1.6
# def conditional(predicate, then_clause, else_clause):
#     return then_clause if predicate else else_clause
#
# conditional(2 == 3, 0, 5)  # Prints 5
# conditional(1 == 1, 0, 5)  # Prints 0
#
# def sqrt_iter(guess, x):
# return conditional(is_good_enough(guess, x), guess, sqrt_iter(improve(guess, x), x))

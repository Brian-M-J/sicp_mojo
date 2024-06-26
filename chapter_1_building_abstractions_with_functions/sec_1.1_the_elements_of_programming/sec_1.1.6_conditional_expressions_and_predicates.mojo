# All the programs in section 1.1.6 - Conditional Expressions and Predicates
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


def abs(x):
    return x if x >= 0 else -x
    # Notice how compared to the JavaScript version:
    # x >= 0 ? x : -x
    # The value is first and condition is second


def abs_v2(x):
    return x if x > 0 else 0 if x == 0 else -x
    # JavaScript version: x >= 0 ? x : x === 0 ? 0 : - x


def greater_or_equal(x, y):
    return x > y or x == y  # Equivalent to not x < y


def main():
    # Conditional expressions
    print(abs(5))

    print(abs_v2(0))

    # logical composition operations
    # expression1 and expression2 - logical conjunction
    # expression1 or expression2 - logical disjunction
    # not expression1 - logical negation

    # the condition that a number x be in the range 5 < x < 10 may be expressed as
    # x > 5 and x < 10
    # Bonus: in Mojo, it can also be:
    # 5 < x < 10
    # TODO: In Python, it can also be:
    # x in range(6, 10)
    # Change this to Mojo once it adds support for this


# Code for Exercises
# Exercise 1.1
# 10
# 5 + 3 + 4
# 9 - 1
# 6 / 2
# 2 * 4 + (4 - 6)
# alias a = 3
# alias b = a + 1
# a + b + a * b
# a == b
# b > a and b if b < a * b else a
# 6 if a == 4 else 6 + 7 + a if b == 4 else 25
# 2 + (b if b > a else a)
# (a if a > b else b if a < b else -1) * (a + 1)

# Exercise 1.2
# Translate the following expression into Mojo
# TODO: Insert picture of expression from pg 17

# Exercise 1.4
# def plus(a, b): return a + b
# def minus(a, b): return a - b
# def a_plus_abs_b(a, b):
#    return (plus if b >= 0 else minus)(a, b)

# Exercise 1.5
# def p(): return p()
# def test(x, y):
#     return 0 if x == 0 else y
# Then he evaluates the statement
# test(0, p())

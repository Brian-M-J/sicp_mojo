# All the programs in section 2.1.1 - Example: Arithmetic Operations for Rational Numbers
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


def add_rat(x, y):
    return make_rat(numer(x) * denom(y) + numer(y) * denom(x), denom(x) * denom(y))


def sub_rat(x, y):
    return make_rat(numer(x) * denom(y) - numer(y) * denom(x), denom(x) * denom(y))


def mul_rat(x, y):
    return make_rat(numer(x) * numer(y), denom(x) * denom(y))


def div_rat(x, y):
    return make_rat(numer(x) * denom(y), denom(x) * numer(y))


def equal_rat(x, y):
    return numer(x) * denom(y) == numer(y) * denom(x)


def make_rat(n, d): return pair(n, d)
def numer(x): return head(x)
def denom(x): return tail(x)


def print_rat(x):
    return display(stringify(numer(x)) + " / " + stringify(denom(x)))  # TODO: Implement these functions


def make_rat(n, d):
    var g = gcd(n, d)
    return pair(n / g, d / g)


def main():
    alias x = pair(1, 2)  # TODO: Implement pair, head and tail
    print(head(x))  # Prints 1
    print(tail(x))  # Prints 2
    alias one_half = make_rat(1, 2)
    print_rat(one_half)  # Prints "1 / 2"
    alias one_third = make_rat(1, 3)
    print_rat(add_rat(one_half, one_third))  # Prints "5 / 6"
    print_rat(mul_rat(one_half, one_third))  # Prints "1 / 6"
    print_rat(add_rat(one_third, one_third))  # Prints "6 / 9"
    print_rat(add_rat(one_third, one_third))  # Prints "2 / 3"

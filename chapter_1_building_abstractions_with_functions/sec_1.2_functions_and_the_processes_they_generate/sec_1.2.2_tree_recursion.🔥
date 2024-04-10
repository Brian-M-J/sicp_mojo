# All the programs in section 1.2.2 - Tree Recursion
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


# tree recursion
def fib(n):
    return 0 if n == 0 else 1 if n == 1 else fib(n - 1) + fib(n - 2)


def fib_iter(a, b, count):
    return b if count == 0 else fib_iter(a + b, a, count - 1)


# linear iteration
def fib_v2(n):
    return fib_iter(1, 0, n)


# coin change problem


def first_denomination(kinds_of_coins):
    return (
        1 if kinds_of_coins
        == 1 else 5 if kinds_of_coins
        == 2 else 10 if kinds_of_coins
        == 3 else 25 if kinds_of_coins
        == 4 else 50 if kinds_of_coins
        == 5 else 0
    )


def cc(amount, kinds_of_coins):
    return 1 if amount == 0 else 0 if amount < 0 or kinds_of_coins == 0 else cc(
        amount, kinds_of_coins - 1
    ) + cc(amount - first_denomination(kinds_of_coins), kinds_of_coins)


def count_change(amount):
    return cc(amount, 5)


def main():
    print(fib(5))  # Prints 5
    print(fib_v2(5))
    # Should be equivalent

    print(count_change(100))  # Prints 292
    # TODO: For some reason, these don't output anything
    # TODO: Bonus - Implement count_change as a linear iterative process
    # TODO: Using this many ternary expressions is extemely ugly. Include a bonus section on pattern matching?

# All the programs in section 1.2.1 - Linear Recursion and Iteration
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


# factorial function with non-tail recursion - linear recursive process
def factorial(n):
    return 1 if n == 1 else n * factorial(n - 1)


def fact_iter(product, counter, max_count):
    return product if counter > max_count else fact_iter(
        counter * product, counter + 1, max_count
    )


# factorial function with tail recursion - linear iterative process
def factorial_v2(n):
    return fact_iter(1, 1, n)


# factorial function with tail recursion and nested function
# TODO: Nested functions cannot be recursive - https://docs.modular.com/mojo/roadmap#nested-functions-cannot-be-recursive
#       Check if the code works once Modular fixes this
def factorial_v3(n):
    def iter(product, counter):
        return product if counter > n else iter(counter * product, counter + 1)

    return iter(1, 1)


def main():
    print(factorial(6))  # Prints 720
    print(factorial_v2(6))
    print(factorial_v3(6))
    # All 3 outputs should be equivalent

# All the programs in section 1.2.6 - Example: Testing for Primality
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


from random import random_float64
from math import floor


# Reusing the square and is_even functions
def square(x):
    return x * x


def is_even(n):
    return n % 2 == 0


def is_prime(n):
    def divides(a, b):
        return b % a == 0

    def find_divisor(n, test_divisor):
        return n if square(test_divisor) > n else test_divisor if divides(
            test_divisor, n
        ) else find_divisor(n, test_divisor + 1)

    def smallest_divisor(n):
        return find_divisor(n, 2)

    return n == smallest_divisor(n)


def fast_is_prime(n, times):
    def fermat_test(n):
        def try_it(a):
            return expmod(a, n, n) == a

    return try_it(1 + floor(random_float64() * (n - 1)))

    def expmod(base, exp, m):
        return (
            1 if exp
            == 0 else square(expmod(base, exp / 2, m))
            % m if is_even(exp) else (base * expmod(base, exp - 1, m))
            % m
        )

    return (
        True if times == 0 else fast_is_prime(n, times - 1) if fermat_test(n) else False
    )


def main():
    print(is_prime(17))
    print(fast_is_prime(17))
    # TODO: Run this code once Mojo adds support for /, // and % on object

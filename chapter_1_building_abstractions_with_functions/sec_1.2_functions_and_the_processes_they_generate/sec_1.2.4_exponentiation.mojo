# All the programs in section 1.2.4 - Exponentiation
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


# Reusing the square function
def square(x):
    return x * x


def linear_recursive_expt(b, n):
    return 1 if n == 0 else b * linear_recursive_expt(b, n - 1)


def linear_iterative_expt(b, n):
    def expt_iter(b, counter, product):
        return product if counter == 0 else expt_iter(b, counter - 1, b * product)

    return expt_iter(b, n, 1)


def fast_expt(b, n):
    def is_even(n):
        return n % 2 == 0

    return 1 if n == 0 else square(fast_expt(b, n / 2)) if is_even(
        n
    ) else b * fast_expt(b, n - 1)


def main():
    print(linear_recursive_expt(2, 3))
    print(linear_iterative_expt(2, 3))
    print(fast_expt(2, 3))
    # TODO: Run this code once Mojo adds support for /, // and % on object

# Code for Exercises
# Exercise 1.17
# def times(a, b):
#     return 0 if b == 0 else  a + times(a, b - 1)

# Exercise 1.19
# def fib(n):
#     return fib_iter(1, 0, 0, 1, n)
# def fib_iter(a, b, p, q, count):
#    return b
#           if count == 0
#           else fib_iter(a,
#                         b,
#                         (??),  # compute p'
#                         (??),  # compute q'
#                         count / 2)
#                if is_even(count)
#                else fib_iter(b * q + a * q + a * p,
#                              b * p + a * q,
#                              p,
#                              q,
#                              count - 1)

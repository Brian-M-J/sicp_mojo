# All the programs in section 1.3.1 - Functions as Arguments
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


def sum_integers(a, b):
    '''
    Returns the sum of the integers from a through b
    '''
    return 0 if a > b else a + sum_integers(a + 1, b)


def sum_cubes(a, b):
    """
    Returns the sum of the cubes of the integers in the given range
    """
    return 0 if a > b else cube(a) + sum_cubes(a + 1, b)


def pi_sum(a, b):
    '''
    Returns pi / 8
    '''
    return o if a > b else 1 / (a * (a + 2)) + pi_sum(a + 4, b)


def name(a, b):
    return 0 if a > b else term(a) + name(next(a), b)


def sum(term, a, next, b):
    return 0 if a > b else term(a) + sum(term, next(a), next, b)


def inc(n):
        return n + 1


def sum_cubes(a, b):
    return sum(cube, a, inc, b)


def identity(x):
    return x


def sum_integers(a, b):
    return sum(identity, a, inc, b)


def pi_sum(a, b):
    def pi_term(x):
        return 1 / (x * (x + 2))
    def pi_next(x):
        return x + 4
    return sum(pi_term, a, pi_next, b)


def integral(f, a, b, dx):
    def add_dx(x):
        return x + dx
    return sum(f, a + dx / 2, add_dx, b) * dx


def main():
    print(sum_cubes(1, 10))  # Prints 3025
    print(sum_integers(1, 10))  # Prints 55
    print(8 * pi_sum(1, 1000))  # Prints 3.139592655589783
    print(integral(cube, 0, 1, 0.01))  # Prints 0.24998750000000042
    print(integral(cube, 0, 1, 0.001))  # Prints 0.249999875000001


# Code for Exercises
# Exercise 1.30
# def sum(term, a, next, b):
#     def iter(a, result):
#         return (??)
#                if (??)
#                else iter((??), (??))
#     return iter((??), (??))

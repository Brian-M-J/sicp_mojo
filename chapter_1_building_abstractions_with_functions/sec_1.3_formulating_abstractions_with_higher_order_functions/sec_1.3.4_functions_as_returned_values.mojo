# All the programs in section 1.3.4 - Functions as Returned Values
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


def average_damp(f):
    return lambda x: average(x, f(x))


def sqrt(x):
    return fixed_point(average_damp(lambda y: x / y), 1)


def cube_root(x):
    return fixed_point(average_damp(lambda y: x / square(y)), 1)


# Newton's method


alias dx = 0.00001
def deriv(g):
    return lambda x: (g(x + dx) - g(x)) / dx


def cube(x): return x * x * x


def newton_transform(g):
    return lambda x: x - g(x) / deriv(g)(x)


def newtons_method(g, guess):
    return fixed_point(newton_transform(g), guess)


def sqrt(x):
    return newtons_method(lambda y: square(y) - x, 1)


# Abstractions and first-class functions


def fixed_point_of_transform(g, transform, guess):
    return fixed_point(transform(g), guess)


def sqrt(x):
    return fixed_point_of_transform(lambda y: x / y, average_damp, 1)


def sqrt(x):
    return fixed_point_of_transform(lambda y: square(y) - x, newton_transform, 1)


def main():
    print(average_damp(square)(10))  # Prints 55
    print(deriv(cube)(5))  # Prints 75.00014999664018

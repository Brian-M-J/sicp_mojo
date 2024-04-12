# All the programs in section 1.3.3 - Functions as General Methods
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


from math import sin, cos


def close_enough(x, y):
    return abs(x - y) < 0.001;


# Finding roots of equations by the half-interval method
def search(f, neg_point, pos_point):
    var midpoint = average(neg_point, pos_point)
    if close_enough(neg_point, pos_point):
        return midpoint
    else:  # Bonus: This extra level of indentation is unnecessary
        var test_value = f(midpoint)
        return search(f, neg_point, midpoint) if positive(test_value) else search(f, midpoint, pos_point) if negative(test_value) else midpoint


def half_interval_method(f, a, b):
    var a_value = f(a)
    var b_value = f(b)
    return search(f, a, b) if negative(a_value) and positive(b_value) else search(f, b, a) if negative(b_value) and positive(a_value) else Error("values are not of opposite sign")


# Finding fixed points of functions
alias tolerance = 0.00001
def fixed_point(f, first_guess):
    def close_enough(x, y):
        return abs(x - y) < tolerance
    def try_with(guess):
        var next = f(guess)
        return next if close_enough(guess, next) else try_with(next)
    return try_with(first_guess)


def sqrt(x):
    return fixed_point(lambda y: x / y, 1)


def sqrt(x):
    return fixed_point(lambda y: average(y, x / y), 1)


def main():
    print(half_interval_method(math_sin, 2, 4))  # Prints 3.14111328125
    print(half_interval_method(lambda x: x * x * x - 2 * x - 3, 1, 2))  # Prints 1.89306640625
    print(fixed_point(math_cos, 1))  # Prints 0.7390822985224023
    print(fixed_point(lambda y: math_sin(y) + math_cos(y), 1))  # Prints 1.2587315962971173


# Code for Exercises
# Exercise 1.37
# cont_frac(lambda i: 1, lambda i: 1, k)

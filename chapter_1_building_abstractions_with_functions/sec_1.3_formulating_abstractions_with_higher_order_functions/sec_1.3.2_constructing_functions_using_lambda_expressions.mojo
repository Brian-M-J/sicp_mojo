# All the programs in section 1.3.2 - Constructing Functions using Lambda Expressions
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


# Lambda functions are declared in Mojo using the lambda keyword as follows:
# lambda x: x + 4
# lambda x: 1 / (x * (x + 2))


def pi_sum(a, b):
    return sum(lambda x: 1 / (x * (x + 2)), a, lambda x: x + 4, b)


def integral(f, a, b, dx):
    return sum(f, a + dx / 2, lambda x: x + dx, b) * dx


def plus4(x):
    return x + 4
# is equivalent to
alias plus4 = lambda x: x + 4


def f(x, y):
    def f_helper(a, b):
        return x * square(a) + y * b + a * b
    return f_helper(1 + x * y, 1 - y)


def f_2(x, y):
    return (lambda a, b: x * square(a) + y * b + a * b)(1 + x * y, 1 - y)


def f_3(x, y):
    var a = 1 + x * y  # TODO: Explain what var is and why I'm using it here
    var b = 1 - y
    return x * square(a) + y * b + a * b


def expmod(base, exp, m):
    return 1 if exp == 0 else (expmod(base, exp / 2, m) * expmod(base, exp / 2, m)) % m if is_even(exp) else (base * expmod(base, exp - 1, m)) % m


def expmod(base, exp, m):
    var half_exp = expmod(base, exp / 2, m)
    return 1 if exp == 0 else (half_exp * half_exp) % m if is_even(exp) else (base * expmod(base, exp - 1, m)) % m


def expmod(base, exp, m):
    if exp == 0:
        return 1
    else:
        if is_even(exp):
            var half_exp = expmod(base, exp / 2, m)
            return (half_exp * half_exp) % m
        else:
            return (base * expmod(base, exp - 1, m)) % m
# Bonus: the extra level of indentation is unnecessary (explain early returns)


def main():
    print((lambda x, y, z: x + y + square(z))(1, 2, 3))  # Prints 12


# Code for Exercises
# Exercise 1.34
# def f(g):
#     return g(2)
# f(square)  # Prints 4
# f(lambda z: z * (z + 1))  # Prints 6

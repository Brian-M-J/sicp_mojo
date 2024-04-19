# All the programs in section 2.1.2 - Abstraction Barriers
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


def make_rat(n, d):
    return pair(n, d)


def numer(x):
    var g = gcd(head(x), tail(x))
    return head(x) / g


def denom(x):
    var g = gcd(head(x), tail(x))
    return tail(x) / g


# Code for Exercises
# Exercise 2.2
# def print_point(p):
#     return display("(" + stringify(x_point(p)) + ", " + stringify(y_point(p)) + ")")  # TODO: Implement display, stringify in slang_mojo

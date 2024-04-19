# All the programs in section 2.1.3 - What Is Meant by Data?
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


def pair(x, y):
    def dispatch(m):
        return x if m == 0 else y if m == 1 else error(m, "argument not 0 or 1 -- pair")
    return dispatch

def head(z): return z(0)
def tail(z): return z(1)


# Code for Exercises
# Exercise 2.4
# def pair(x, y):
#     return lambda m: m(x, y)
#
# def head(z):
#     return z(lambda p, q: p)

# Exercise 2.6
# alias zero = lambda f: lambda x: x
# def add_1(n):
#     return lambda f: lambda x: f(n(f)(x))

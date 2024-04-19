# All the programs in section 2.2.2 - Hierarchical Structures
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


def count_leaves(x):
    return 0 if is_null(x) else 1 if not is_pair(x) else count_leaves(head(x)) + count_leaves(tail(x))


# Mapping over trees


def count_leaves(x):
    return 0 if is_null(x) else 1 if not is_pair(x) else count_leaves(head(x)) + count_leaves(tail(x))


def scale_tree(tree, factor):
    return map(lambda sub_tree: scale_tree(sub_tree, factor) if is_pair(sub_tree) else sub_tree * factor, tree)


def main():
    alias x = pair(list(1, 2), list(3, 4))
    print(length(x))  # Prints 3
    print(count_leaves(x))  # Prints 4
    print(list(x, x))  # Prints list(list(list(1, 2), 3, 4), list(list(1, 2), 3, 4))
    print(length(list(x, x)))  # Prints 2
    print(count_leaves(list(x, x)))  # Prints 8
    print(scale_tree(list(1, list(2, list(3, 4), 5), list(6, 7)), 10))  # Prints list(10, list(20, list(30, 40), 50), list(60, 70))


# Code for Exercises
# Exercise 2.26
# alias x = list(1, 2, 3)
# alias y = list(4, 5, 6)

# Exercise 2.27
# alias x = list(list(1, 2), list(3, 4))
# x  # Prints list(list(1, 2), list(3, 4))
# reverse(x)  # Prints list(list(3, 4), list(1, 2))
# deep_reverse(x)  # Should print list(list(4, 3), list(2, 1))

# Exercise 2.28
# const x = list(list(1, 2), list(3, 4))
# fringe(x)  # Should print list(1, 2, 3, 4)
# fringe(list(x, x))  # Should print list(1, 2, 3, 4, 1, 2, 3, 4)

# Exercise 2.29
# def make_mobile(left, right):
#     return list(left, right)
# def make_branch(length, structure):
#     return list(length, structure)
# def make_mobile(left, right):
#     return pair(left, right)
# def make_branch(length, structure):
#     return pair(length, structure)

# Exercise 2.30
# square_tree(list(1,
#                  list(2, list(3, 4), 5),
#                  list(6, 7)))
# # Should print list(1, list(4, list(9, 16), 25), list(36, 49))

# Exercise 2.31
# def square_tree(tree): return tree_map(square, tree)

# Exercise 2.32
# def subsets(s):
#     if (is_null(s)):  # TODO: is_none?
#         return list(null)
#     else:
#         let rest = subsets(tail(s))  # TODO: Explain the use of let here
#         return append(rest, map((??), rest))

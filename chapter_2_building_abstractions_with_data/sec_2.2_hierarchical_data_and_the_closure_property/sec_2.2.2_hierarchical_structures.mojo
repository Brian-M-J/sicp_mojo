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

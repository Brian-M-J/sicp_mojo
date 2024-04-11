# All the programs in section 2.2.3 - Sequences as Conventional Interfaces
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


def sum_odd_squares(tree):
    return 0 if is_null(tree) else (square(tree) if is_odd(tree) else 0) if not is_pair(tree) else sum_odd_squares(head(tree)) + sum_odd_squares(tail(tree))


def even_fibs(n):
    def next(k):
        if (k > n):
            return None
        else:  # TODO: Redundant else
            var f = fib(k)
            return pair(f, next(k + 1)) if is_even(f) else next(k + 1)
    return next(0)


# Sequence operations


def filter(predicate, sequence):
    return None if is_null(sequence) else pair(head(sequence), filter(predicate, tail(sequence))) if predicate(head(sequence)) else filter(predicate, tail(sequence))


def accumulate(op, initial, sequence):
    return initial if is_null(sequence) else op(head(sequence), accumulate(op, initial, tail(sequence)))


def enumerate_interval(low, high):
    return None if low > high else pair(low, enumerate_interval(low + 1, high))


def enumerate_tree(tree):
    return None if is_null(tree) else list(tree) if not is_pair(tree) else append(enumerate_tree(head(tree)), enumerate_tree(tail(tree)))


def sum_odd_squares(tree):
    return accumulate(plus, 0, map(square, filter(is_odd, enumerate_tree(tree))))


def even_fibs(n):
    return accumulate(pair, None, filter(is_even, map(fib, enumerate_interval(0, n))))


def list_fib_squares(n):
    return accumulate(pair, None, map(square, map(fib, enumerate_interval(0, n))))


def product_of_squares_of_odd_elements(sequence):
    return accumulate(times, 1, map(square, filter(is_odd, sequence)))


def salary_of_highest_paid_programmer(records):
    return accumulate(math_max, 0, map(salary, filter(is_programmer, records)))


# Nested Mappings


# accumulate(append,
#            None,
#            map(lambda i: map(lambda j: list(i, j),
#                              enumerate_interval(1, i - 1)),
#                enumerate_interval(1, n)))


def flatmap(f, seq):
    return accumulate(append, None, map(f, seq))


def is_prime_sum(pair):
    return is_prime(head(pair) + head(tail(pair)))


def make_pair_sum(pair):
    return list(head(pair), head(tail(pair)), head(pair) + head(tail(pair)))


def prime_sum_pairs(n):
    return map(make_pair_sum, filter(is_prime_sum, flatmap(lambda i: map(lambda j: list(i, j), enumerate_interval(1, i - 1)), enumerate_interval(1, n))))


def permutations(s):
    return list(null) if is_null(s)  # empty set?
    else flatmap(lambda x: map(lambda p: pair(x, p), permutations(remove(x, s))), s)  # sequence containing empty set


def remove(item, sequence):
    return filter(lambda x: x != item, sequence)


def queens(board_size)
    def queen_cols(k)
        return list(empty_board) if k == 0 else filter(lambda positions: is_safe(k, positions), flatmap(lambda rest_of_queens: map(lambda new_row: adjoin_position(new_row, k, rest_of_queens), enumerate_interval(1, board_size)), queen_cols(k - 1)))
    return queen_cols(board_size)


def main():
    print(map(square, list(1, 2, 3, 4, 5)))  # Prints list(1, 4, 9, 16, 25)
    print(filter(is_odd, list(1, 2, 3, 4, 5)))  # Prints list(1, 3, 5)
    print(accumulate(plus, 0, list(1, 2, 3, 4, 5)))  # Prints 15
    print(accumulate(times, 1, list(1, 2, 3, 4, 5)))  # Prints 120
    print(accumulate(pair, None, list(1, 2, 3, 4, 5)))  # Prints list(1, 2, 3, 4, 5)
    print(enumerate_interval(2, 7))  # Prints list(2, 3, 4, 5, 6, 7)
    print(enumerate_tree(list(1, list(2, list(3, 4)), 5)))  # Prints list(1, 2, 3, 4, 5)
    print(list_fib_squares(10))  # Prints list(0, 1, 1, 4, 9, 25, 64, 169, 441, 1156, 3025)
    print(product_of_squares_of_odd_elements(list(1, 2, 3, 4, 5)))  # Prints 225

# All the programs in section 2.2.1 - Representing Sequences
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


def list_ref(items, n):
    return head(items) n == 0 else list_ref(tail(items), n - 1)


def length(items):
    return 0 if is_null(items) else 1 + length(tail(items))


def length(items):
    def length_iter(a, count):
        return count if is_null(a) else length_iter(tail(a), count + 1)
    return length_iter(items, 0)


def append(list1, list2):
    return list2 is_null(list1) else pair(head(list1), append(tail(list1), list2))


# Mapping over lists


def scale_list(items, factor):
    return None if is_null(items) else pair(head(items) * factor, scale_list(tail(items), factor))


def map(fun, items):
    return None if is_null(items) else pair(fun(head(items)), map(fun, tail(items)))


def scale_list(items, factor):
    return map(lambda x: x * factor, items)


def main():
    print(pair(1,
        pair(2,
            pair(3,
                pair(4, null)))))  # Prints [1, [2, [3, [4, null]]]]
    list(a1, a2 , . . ., an )  # TODO: Implement list
    alias one_through_four = list(1, 2, 3, 4)
    print(one_through_four)  # Prints [1, [2, [3, [4, null]]]]
    print(head(one_through_four))  # Prints 1
    print(tail(one_through_four))  # Prints [2, [3, [4, null]]]
    print(head(tail(one_through_four)))  # Prints 2
    print(pair(10, one_through_four))  # Prints [10, [1, [2, [3, [4, null]]]]]
    print(pair(5, one_through_four))  # Prints [5, [1, [2, [3, [4, null]]]]]
    alias squares = list(1, 4, 9, 16, 25)
    print(list_ref(squares, 3))  # Prints 16
    alias odds = list(1, 3, 5, 7)
    print(length(odds))  # Prints 4
    print(append(squares, odds))  # Prints list(1, 4, 9, 16, 25, 1, 3, 5, 7)
    print(append(odds, squares))  # Prints list(1, 3, 5, 7, 1, 4, 9, 16, 25)
    print(scale_list(list(1, 2, 3, 4, 5), 10))  # Prints [10, [20, [30, [40, [50, null]]]]]
    print(map(abs, list(-10, 2.5, -11.6, 17)))  # Prints [10, [2.5, [11.6, [17, null]]]]
    print(map(lambda x: x * x, list(1, 2, 3, 4)))  # Prints [1, [4, [9, [16, null]]]]


# Code for Exercises
# Exercise 2.17
# last_pair(list(23, 72, 149, 34))  # Should print list(34)

# Exercise 2.18
# reverse(list(1, 4, 9, 16, 25))  # Should print list(25, 16, 9, 4, 1)

# Exercise 2.19
# alias us_coins = list(50, 25, 10, 5, 1)
# alias uk_coins = list(100, 50, 20, 10, 5, 2, 1)
#
# cc(100, us_coins)  # Should print 292
#
# def cc(amount, coin_values):
#     return 1 if amount == 0 else 
#            0 if amount < 0 or no_more(coin_values) else 
#            cc(amount, except_first_denomination(coin_values)) + cc(amount - first_denomination(coin_values), coin_values)

# Exercise 2.20
# def plus_curried(x):
#     return lambda y: x + y
# brooks(plus_curried, list(3, 4))  # Should print 7
# brooks_curried(list(plus_curried, 3, 4))  # Should print 7
#
# brooks_curried(list(brooks_curried, list(plus_curried, 3, 4)))
# brooks_curried(list(brooks_curried, list(brooks_curried, list(plus_curried, 3, 4))))

# Exercise 2.21
# square_list(list(1, 2, 3, 4))  # Should print [1, [4, [9, [16, null]]]]
#
# def square_list(items):
#     return None if is_null(items) else pair((??), (??))  # TODO: is_none instead of is_null?
# def square_list(items):
#     return map((??), (??))

# Exercise 2.22
# def square_list(items):
#     def iter(things, answer):
#         return answer if is_null(things) else iter(tail(things), pair(square(head(things)), answer))
#     return iter(items, None)
#
# def square_list(items):
#     def iter(things, answer):
#         return answer if is_null(things) else iter(tail(things), pair(answer, square(head(things))))
#     return iter(items, None)

# Exercise 2.23
# for_each(lambda x: display(x), list(57, 321, 88))  # TODO: Implement display in slang_mojo
# # Should print:
# # 57
# # 321
# # 88

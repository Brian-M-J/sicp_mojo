# All the programs in section 1.1.1 - Expressions of the book Structure and Interpretation of Computer Programs JavaScript Edition
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


# Since this is a script file, I will be using print statements to print the results of expressions.
# If you are running this in the REPL, you can directly type the expressions to get the outputs.
# For example, 137 + 349<enter><enter> instead of print(137 + 349). No main function required.


# All execution starts from the main function.
# TODO: Once Mojo gets support for top level expressions, should I remove the main function?
def main():
    # The Mojo compiler will evaluate the following statements
    print(486)  # No semicolons required!

    # Compound expressions
    print(137 + 349)  # Prints 486
    print(1000 - 334)  # Prints 666
    print(5 * 99)  # Prints 495
    print(10 / 4)  # Prints 2.5
    print(2.7 + 10)  # Prints 12.699999999999999
    # If you're wondering why the output isn't 12.7, look at https://youtu.be/PZRI1IfStY0

    # Nested operator combinations
    print((3 * 5) + (10 - 6))  # Prints 19

    # Operator precedence
    print(3 * 5 + 10 / 2)  # Prints 20.0
    # Equivalent to (3 * 5) + (10 / 2)

    print(1 - 5 / 2 * 4 + 3)  # Prints -6.0
    # Equivalent to (1 - ((5 / 2) * 4)) + 3

    # Complex expressions
    print(3 * 2 * (3 - 5 + 4) + 27 / 6 * 10)  # Prints 57.0

    # Bonus: integer division
    # By default, the result of division with the / operator is a decimal. Hence the redundant .0 at the end of
    # some of the examples.
    # Mojo supports integer division with the // operator. Integer division rounds down the result of division and
    # removes the decimal point. That is, the result is an integer, not a decimal (called a floating point
    # number in computer science).
    print(6 // 3)  # Prints 2
    print(7 // 3)  # Prints 2
    print(-7 // 3)  # Prints -3

# All the programs in section 1.1.2 - Naming and the Environment
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


def main():
    alias size = 2
    # Mojo uses the keyword alias to create constants.
    # The value of constants is fixed before your program starts executing.
    # You cannot change its value as the program runs.

    print(size)  # Prints 2
    print(5 * size)  # Prints 10

    alias pi = 3.14159
    alias radius = 10
    print(pi * radius * radius)  # Prints 314.15899999999999
    alias circumference = 2 * pi * radius
    print(circumference)  # Prints 62.831800000000001

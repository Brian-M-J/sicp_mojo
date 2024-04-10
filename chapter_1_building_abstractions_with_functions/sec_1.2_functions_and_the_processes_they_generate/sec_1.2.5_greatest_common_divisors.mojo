# All the programs in section 1.2.5 - Greatest Common Divisors
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


# Euclid's algorithm for finding greatest common divisors
def gcd(a, b):
    return a if b == 0 else gcd(b, a % b)


def main():
    print(gcd(206, 40))  # Prints 2
    # TODO: Run this code once Mojo adds support for /, // and % on object

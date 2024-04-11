# All the programs in section 2.1.4 - Extended Exercise: Interval Arithmetic
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


def add_interval(x, y):
    return make_interval(lower_bound(x) + lower_bound(y), upper_bound(x) + upper_bound(y))


def mul_interval(x, y):
    var p1 = lower_bound(x) * lower_bound(y)
    var p2 = lower_bound(x) * upper_bound(y)
    var p3 = upper_bound(x) * lower_bound(y)
    var p4 = upper_bound(x) * upper_bound(y)
    return make_interval(math_min(p1, p2, p3, p4), math_max(p1, p2, p3, p4))


def div_interval(x, y):
    return mul_interval(x, make_interval(1 / upper_bound(y), 1 / lower_bound(y)))

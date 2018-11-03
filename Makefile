#
# Copyright (C) 2010-2018 Canonical, Ltd.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#

BINDIR=/usr/bin

e820-bios: e820-bios.o

CC = gcc
CFLAGS  += -O2 -Wall -Werror  -lx86

e820-bios: e820-bios.c
	$(CC) $< -lx86 -o $@

.PHONEY: clean
clean:
	rm -f e820-bios e820-bios.o

.PHONEY: install
install:
	mkdir -p ${DESTDIR}${BINDIR}
	cp e820-bios ${DESTDIR}${BINDIR}

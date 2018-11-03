e820-bios: e820-bios.o

CC = gcc
CFLAGS  += -O2 -Wall -Werror  -lx86

e820-bios: e820-bios.c
	$(CC) $< -lx86 -o $@

clean:
	rm e820-bios e820-bios.o

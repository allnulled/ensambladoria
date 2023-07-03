#!/usr/bin/bash

# Creamos el .o:
nasm -f elf64 -o hello.o hello.asm

# Creamos el binario:
ld hello.o -o hello

# Ejecutamos:
./hello
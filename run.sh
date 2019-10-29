#!/bin/bash

gcc -march=i386 -fno-pie -m32 -ffreestanding -c function.c -o function.o
objdump -M i386 -d function.o
ld -melf_i386 -o function.bin -Ttext 0x0 --oformat binary function.o
echo -e "\ncompiler output\n"
xxd function.o
echo -e "\nmachine output\n"
xxd function.bin
echo -e "\nmachine code\n"
ndisasm -b 32 function.bin
#!/bin/bash

echo "Compiling NASM"
nasm -f bin 32bit_print.asm -o 32bit_print.bin

echo "Running file on emulator"
qemu-system-x86_64 32bit_print.bin
#!/bin/bash

echo "Compiling NASM"
nasm -f bin boot_sect_stack.asm -o boot_sect_stack.bin 

echo "Running file on emulator"
qemu-system-x86_64 boot_sect_stack.bin
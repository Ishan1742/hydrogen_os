#!/bin/bash

echo "Compiling NASM"
nasm -f bin boot_sect_print.asm -o boot_sect_print.bin 
nasm -f bin boot_sect_main.asm -o boot_sect_main.bin 
nasm -f bin boot_sect_hex.asm -o boot_sect_hex.bin

echo "Running file on emulator"
qemu-system-x86_64 boot_sect_main.bin
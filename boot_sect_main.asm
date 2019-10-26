[org 0x7c00]    ; tell the assembler that our offset is bootsector code

mov bx, HELLO
call print

call print_nl

mov bx, GOODBYE
call print

call print_nl

jmp $

%include "boot_sect_print.asm"

;data
HELLO:
    db 'Hello World', 0

GOODBYE:
    db 'Goodbye', 0

times 510-($-$$) db 0
dw 0xaa55
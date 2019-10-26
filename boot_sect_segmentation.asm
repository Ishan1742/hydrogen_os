mov ah, 0x0e

mov al, [the_secret]
int 0x10    ; This doesn't work

mov al, ' '
int 0x10

mov bx, 0x7c0   ; the segment is automatically << 4
;   special registers which indicate segments 
;   cs (code), ss (stack), ds (data), es (extra user defined)
mov ds, bx
; all memory references will be offset by 'ds' implicitly

mov al, [the_secret]
int 0x10

mov al, ' '
int 0x10

mov al, [es:the_secret] ; es currently 0x000
int 0x10

mov al, ' '
int 0x10

mov bx, 0x7c0
mov es, bx
mov al, [es:the_secret]
int 0x10

mov al, ' '
int 0x10

jmp $

the_secret:
    db "X"

times 510-($-$$) db 0
dw 0xaa55
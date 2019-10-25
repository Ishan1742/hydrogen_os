mov ah, 0x0e ;tty mode 

mov bp, 0x8000
mov sp, bp ; if the stack is empty then sp points to bp

push 'A'
push 'B'
push 'C'

; to show how the stack grows downwards
mov al, [0x7ffe]
int 0x10

mov al, [0x8000]
int 0x10

; recover our characters using the standard procedure: 'pop'
; we can only pop full words so we need an auxilary register to manipulate
; the lower byte

pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10

mov al, [0x8000]
int 0x10

jmp $
times 510-($-$$) db 0
dw 0xaa55
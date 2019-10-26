[bits 32]   ; using 32-bit protected mode

; constants defined
VIDEO_MEMORY equ 0xb8000
WHITE_ON_BLACK equ 0x0f     ; the color byte for each character

print_string_pm:
    pusha
    mov edx, VIDEO_MEMORY

    print_string_pm_loop:
        mov al, [ebx]   ; [ebx] is the address of our character
        mov ah, WHITE_ON_BLACK

        cmp al, 0   ; check if end of string 
        je print_string_pm_done

        mov [edx], ax
        add ebx, 1
        add edx, 2

        jmp print_string_pm_loop

    print_string_pm_done:
        popa
        ret
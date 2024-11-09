section .bss
section .data
section .text
global _f
_f:
    push ebp
    mov ebp, esp

    sub esp, 8
    mov byte[ebp - 4], 127
    mov al, byte[ebp - 4]
    shl al, 3
    mov byte[ebp - 8], al
    or  al, byte[ebp - 4]
    movsx eax, al

    mov esp, ebp
    pop ebp
    ret

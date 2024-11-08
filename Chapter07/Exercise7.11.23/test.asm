section .bss

section .data

section .text
global _power2
_power2:
    push ebp
    mov ebp, esp

    sub esp, 4
    mov dword[ebp - 4], 1
    mov cl, byte[ebp + 8]
    shl dword[ebp - 4], cl
    mov eax, dword[ebp - 4]

    mov esp, ebp
    pop ebp
    ret
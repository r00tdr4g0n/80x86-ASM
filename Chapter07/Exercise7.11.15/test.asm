section .bss
section .data
section .text
global _add

_add:
    push ebp
    mov ebp, esp

    mov eax, dword[ebp + 8]
    add eax, dword[ebp + 12]

    mov esp, ebp
    pop ebp
    ret
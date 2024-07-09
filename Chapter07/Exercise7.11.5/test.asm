section .bss

section .data
extern _a, _b, _c

section .text
global _f

_f:
    push    ebp
    mov     ebp, esp

    mov     eax, [_a]
    mul     dword[ebp + 8]
    mul     dword[ebp + 8]
    mov     ecx, eax

    mov     eax, [_b]
    mul     dword[ebp + 8]
    add     ecx, eax

    mov     eax, [_c]
    add     ecx, eax

    mov     eax, ecx

    mov     esp, ebp
    pop     ebp
    ret
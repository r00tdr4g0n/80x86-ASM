section .bss

section .data

section .text
global _f

_f:
    push ebp
    mov ebp, esp

    mov eax, dword[ebp + 0x08]  ; int n;
    mov ebx, dword[ebp + 0x0c]  ; int m;
    sub eax, ebx                ; n = n - m;

    mov esp, ebp
    pop ebp
    ret
section .bss

section .data

section .text
global _f

_f:
    push ebp
    mov ebp, esp

    ;

    mov esp, ebp
    pop ebp
    ret

_main:
    push ebp
    mov ebp, esp

    sub esp, 8              ; int i, j;
    mov dword[ebp - 4], 5   ; i = 5;
    mov dword[ebp - 8], 10  ; j = 10;

    push dword[ebp - 8]
    push dword[ebp - 4]
    call _f

    mov dword[ebp - 4], eax ; i = f(i, j);

    mov esp, ebp
    pop ebp
    ret
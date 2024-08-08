section .bss
section .data
section .text
global _max

_max:
    push ebp
    mov ebp, esp

    mov ebx, dword[ebp + 8]
    cmp ebx, dword[ebp + 12]
    jg _g
    mov eax, dword[ebp + 12]
    jmp _done

_g:
    mov eax, ebx

_done:
    mov esp, ebp
    pop ebp
    ret
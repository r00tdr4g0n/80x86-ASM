section .bss
section .data
section .text
global _max

_max:
    push ebp
    mov ebp, esp

    sub esp, 4
    mov eax, dword[ebp + 8]
    mov ebx, dword[ebp + 12]
    mov ecx, dword[ebp + 16]

    cmp eax, ebx
    jg _g1
    mov dword[ebp - 4], ebx
    jmp _cmp

_g1:
    mov dword[ebp - 4], eax

_cmp:
    cmp ecx, dword[ebp - 4]
    jg _g2
    jmp _done

_g2:
    mov dword[ebp - 4], ecx

_done:
    mov eax, dword[ebp - 4]

    mov esp, ebp
    pop ebp
    ret
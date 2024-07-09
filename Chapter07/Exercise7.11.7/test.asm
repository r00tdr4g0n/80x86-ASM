section .bss

section .data
extern _result

section .text
global _max

_max:
    push ebp
    mov ebp, esp

    sub esp, 4
    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]

    cmp eax, ebx
    jg _g
    mov dword[ebp - 4], ebx
    jmp _done

_g:
    mov dword[ebp - 4], eax

_done:
    mov eax, dword[ebp - 4]
    mov dword[_result], eax

    mov esp, ebp
    pop ebp
    ret
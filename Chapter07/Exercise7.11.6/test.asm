section .bss

section .data
extern _result

section .text
global _max

_max:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]

    cmp eax, ebx
    jle _le
    jmp _done

_le:
    mov eax, ebx

_done:
    mov dword[_result], eax

    mov esp, ebp
    pop ebp
    ret
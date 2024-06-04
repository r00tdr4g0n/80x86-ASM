; test.asm

segment .data
n1 dd 0
n2 dd 0

segment .bss

segment .text
extern _result
global _max

_max:
    push ebp
    mov ebp, esp

    mov eax, [esp+8]
    mov dword[n1], eax

    mov eax, [esp+12]
    mov dword[n2], eax

    mov eax, dword[n1]
    cmp eax, dword[n2]
    jg _greater
    jmp _less

_greater:
    mov eax, dword[n1]
    mov dword[_result], eax
    jmp _done

_less:
    mov eax, dword[n2]
    mov dword[_result], eax

_done:
    mov esp, ebp
    pop ebp
    ret
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
    sub esp, 4

    mov eax, [esp+12]
    mov dword[n1], eax

    mov eax, [esp+16]
    mov dword[n2], eax

    mov eax, dword[n1]
    cmp eax, dword[n2]
    jg _greater
    jmp _less

_greater:
    mov eax, dword[n1]
    mov [esp], eax
    jmp _done

_less:
    mov eax, dword[n2]
    mov [esp], eax

_done:
    mov eax, [esp]
    mov dword[_result], eax

    mov esp, ebp
    pop ebp
    ret
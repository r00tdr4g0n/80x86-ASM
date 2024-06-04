segment .data

segment .bss

segment .text
extern _result
global _max

_max:
    push ebp
    mov ebp, esp

    sub esp, 4

    mov ebx, [ebp + 8]
    mov ecx, [ebp + 12]

    cmp ebx, ecx
    jg greater
    jle less

greater:
    mov [esp], ebx
    jmp done

less:
    mov [esp], ecx

done:
    mov eax, [esp]
    mov dword[_result], eax

    mov esp, ebp
    pop ebp
    ret
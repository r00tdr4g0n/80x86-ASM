segment .data
segment .bss
segment .text
    global _max

_max:
    push ebp
    mov ebp, esp

    mov ebx, [ebp + 8]
    mov ecx, [ebp + 12]

    cmp ebx, ecx
    jg greater
    jle less

greater:
    mov eax, ebx
    jmp done

less:
    mov eax, ecx

done:
    mov esp, ebp
    pop ebp
    ret
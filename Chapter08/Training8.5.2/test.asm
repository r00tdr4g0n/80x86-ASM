section .text
    global _strlen:

_strlen:
    push    ebp
    mov     ebp, esp
    push    edi
    mov     edi, dword [ebp+8]
    mov     eax, 0
again:
    cmp     byte [edi], 0
    jnz     done
    add     edi, 1
    inc     eax
    jmp     again
done:
    pop     edi
    mov     esp, ebp
    pop     ebp
    ret

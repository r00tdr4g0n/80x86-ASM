section .bss

section .data

section .text
global _fact

_fact:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    cmp eax, 1
    jz done
    dec eax
    push eax
    call _fact
    add esp, 4
    imul eax, [ebp+8]

done:
    mov esp, ebp
    pop ebp
    ret



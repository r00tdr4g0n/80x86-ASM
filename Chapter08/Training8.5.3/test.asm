section .text
global _IndexOf
_IndexOf:
    push ebp
    mov ebp, esp
    push esi
    mov esi, [ebp + 8]
    mov eax, 0
    mov dl, [ebp + 12]
again:
    mov dh, [esi]
    cmp dh, 0
    jz fail
    cmp dh, dl
    je done
    add esi, 1
    inc eax
    jmp again
fail:
    mov eax, -1
done:
    pop esi
    mov esp, ebp
    pop ebp
    ret
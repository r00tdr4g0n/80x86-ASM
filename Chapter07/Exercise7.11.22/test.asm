section .bss
    extern _of

section .data

section .text
    global _negate

_negate:
    push ebp
    mov ebp, esp

    mov al, byte[ebp + 8]
    neg eax
    jo ofison
    mov dword[_of], 0
    jmp done

ofison:
    mov dword[_of], 1

done:
    mov esp, ebp
    pop ebp
    ret
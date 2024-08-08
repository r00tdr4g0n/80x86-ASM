section .bss
section .data
section .text
global _fact
_fact:
    push ebp
    mov ebp, esp

    mov ebx, dword[ebp + 8]

    cmp ebx, 1
    je _end

    dec ebx
    push ebx
    call _fact
    mul dword[ebp + 8]
    jmp _done

_end:
    mov eax, 0x01

_done:
    mov esp, ebp
    pop ebp
    ret
section .bss
section .data
section .text
global _log2
_log2:
    push ebp
    mov ebp, esp

    mov ecx, 0
    mov ebx, 2

    cmp ebx, dword[ebp + 8]
    jg err

    test dword[ebp + 8], 0x00000001
    jnz err

    shl ebx, cl

err:
    mov eax, -1

done:
    mov esp, ebp
    pop ebp
    ret
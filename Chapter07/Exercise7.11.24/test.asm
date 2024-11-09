section .bss
section .data
section .text
global _log2
_log2:
    push ebp
    mov ebp, esp

    mov ecx, 0
    mov ebx, 1

    cmp dword[ebp + 8], 2
    jl err

    test dword[ebp + 8], 0x00000001
    jnz err

loop:
    inc cl
    mov ebx, 1
    shl ebx, cl
    cmp ebx, dword[ebp + 8]
    jl loop
    jg err
    mov eax, ecx
    jmp done

err:
    mov eax, -1

done:
    mov esp, ebp
    pop ebp
    ret
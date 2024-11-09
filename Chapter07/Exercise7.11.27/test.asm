section .bss
section .data
    a dd 0, 1, 0, 1, 0, 1, 0, 1, 0, 1

section .text
global _f
_f:
    push ebp
    mov ebp, esp

    mov eax, 0
    cmp dword[ebp + 8], 0
    je done

    mov ecx, dword[ebp + 8]
    dec ecx
    
    push ecx
    call _f
    pop ecx

    add eax, dword[a + ecx * 4]

done:
    mov esp, ebp
    pop ebp
    ret
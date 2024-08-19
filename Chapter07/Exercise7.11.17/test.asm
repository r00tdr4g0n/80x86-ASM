section .bss
section .data
section .text
global _sum
_sum:
    push ebp
    mov ebp, esp

    mov eax, dword[ebp + 8]
    cmp eax, 0
    je done
    mov edx, eax
    dec edx
    push edx
    call _sum
    add eax, dword[ebp + 8]

done:
    mov esp, ebp
    pop ebp
    ret
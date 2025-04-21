section .data
    global _a, _b
    _a  dd          1, 3, 5, 7, 9, 11, 13, 15, 17, 19
    _b  times 10    dw 5

section .bss
    global _c
    _c  resb        10
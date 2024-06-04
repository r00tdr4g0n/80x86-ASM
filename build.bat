nasm -f elf test.asm
gcc -m32 -c main.c
gcc -m32 -o main.exe test.o main.o
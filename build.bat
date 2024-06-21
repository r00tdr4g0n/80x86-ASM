nasm -f elf test.asm
gcc -c main.c
gcc -o main.exe test.o main.o
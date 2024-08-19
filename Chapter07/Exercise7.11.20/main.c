#include <stdio.h>

// int value;

// void f(int a, int b)
// {
//     int n, m;
//     n = a + b;
//     m = a * b;
//     if (n > m) value = 0;
//     else value = 1;
// }

extern int value;
extern void f(int, int);

int main()
{
    f(10, 1);
    printf("%d\n", value);
    return 0;
}
#include <stdio.h>

extern void f(int, int);

int main()
{
    int i, j;
    i = 10;
    j = 20;

    f(i, j);

    return 0;
}
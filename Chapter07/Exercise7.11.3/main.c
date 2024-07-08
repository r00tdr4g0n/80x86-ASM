#include <stdio.h>

extern int f(int n, int m);

int main()
{
    int i, j;
    i = 5;
    j = 10;
    i = f(i, j);

    return 0;
}
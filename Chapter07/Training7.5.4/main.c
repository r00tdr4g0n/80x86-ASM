#include <stdio.h>

extern void max(int, int);
int result;

int main ()
{
    int n, m;

    n = 5;
    m = 7;
    max(n, m);
    printf("result = %d\n", result);
}
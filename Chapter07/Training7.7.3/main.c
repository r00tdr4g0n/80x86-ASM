#include <stdio.h>

extern int max(int, int);
int result;

int main ()
{
    int n, m;

    n = 9;
    m = 7;
    result = max(n, m);

    printf("result = %d\n", result);
}
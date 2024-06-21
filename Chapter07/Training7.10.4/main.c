#include <stdio.h>

extern int fact(int);

int main () 
{
    printf("fact = %d\n", fact(10));

    return 0;
}
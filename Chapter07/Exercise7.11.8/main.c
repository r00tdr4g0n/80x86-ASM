#include <stdio.h>

extern int f(int);
extern int check(int);
extern int fact(int);
extern int ones(int);
extern int isOdd(int);

int main ()
{
    printf("f: %d\n", f(10));
    printf("check: %d\n", check(-5));
    printf("fact: %d\n", fact(5));
    printf("ones: %d\n", ones(127));
    printf("isOdd: %d\n", isOdd(4));
    return 0;
}
#include <stdio.h>

extern int sum(int);
extern int test();

int main()
{
    printf("%d\n", test());

    return 0;
}
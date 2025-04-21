#include <stdio.h>

extern int strlen(char *s);

int main()
{
    printf("len = %d\n", strlen("Hello, World!"));

    return 0;
}
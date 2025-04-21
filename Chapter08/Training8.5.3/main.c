#include <stdio.h>

extern int IndexOf(char *s, char ch);

int main()
{
    static char s[] = "Hello, World!";
    printf("index of W = %d\n", IndexOf(s, 'W'));
    printf("index of X = %d\n", IndexOf(s, 'X'));
    return 0;
}
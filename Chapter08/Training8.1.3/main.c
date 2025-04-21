#include <stdio.h>

extern int a[];
extern short b[];
extern char c[];

int main()
{
    int i = 0;

    printf("a = ");
    for (i = 0; i < 10; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");

    printf("b = ");
    for (i = 0; i < 10; i++) {
        printf("%d ", b[i]);
    }
    printf("\n");

    printf("c = ");
    for (i = 0; i < 10; i++) {
        printf("%d ", c[i]);
    }
    printf("\n");

    return 0;
}
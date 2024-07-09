#include <stdio.h>

int a = 1, b = 2, c = 3;

extern int f(int x);

int main () {
    int res = f(10);

    printf("res : %d\n", res);

    return 0;
}
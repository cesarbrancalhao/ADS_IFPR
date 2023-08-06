#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int r = -2;
    int a = 0, n = -2;

    printf("PG: ");

    while (a < 9)
    {
        printf("%d, ", n);
        n *= r;
        a += 1;
    }
    printf("%d.", n);
    printf("\n");

    return 0;
}
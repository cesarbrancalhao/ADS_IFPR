#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i = 1, j, k;

    while (i != 11)
    {
        j = i * i;
        k = j * i;
        printf("%d, %d^2 = %d, %d^3 = %d.\n", i, i, j, i, k);
        i++;
    }

    return 0;
}

/*if (i % 2 != 0)
        {
            j += i;
        }
        i++; */
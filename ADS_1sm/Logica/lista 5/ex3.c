#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i = 0, j = 0;

    while (i != 101)
    {
        if (i % 2 != 0)
        {
            j += i;
        }
        i++;   
    }

    printf("%d.\n", j);

    return 0;
}
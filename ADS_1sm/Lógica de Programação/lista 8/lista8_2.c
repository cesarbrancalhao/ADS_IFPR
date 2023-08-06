#include <stdio.h>
#include <math.h>

int main(void)
{
    int vetorA[9], vetorB[9];

    for (int i = 0; i < 10; i++)
    {
    printf("Insira o valor %d:\n", i+1);
    scanf("%d", &vetorA[i]);
    //fflush(stdin);
    __fpurge(stdin);
    vetorB[i] = vetorA[i]*2;

    if (vetorA[i] % 2 == 0)
    {
        vetorB[i] = vetorA[i] * 5;
    } else
    {
        vetorB[i] = vetorA[i] + 5;
    }
    }
    
    printf("\nValores resultantes:\n");
    for (int i = 0; i < 10; i++)
    {
        if (i == 9)
            {
                printf(" %d.\n", vetorB[i]);
            }
            else {
                printf(" %d,", vetorB[i]);
            }
    }

    return 0;
}
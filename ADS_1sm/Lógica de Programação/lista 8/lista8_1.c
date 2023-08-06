#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    float vetorA[4], vetorB[4];

    for (int i = 0; i < 5; i++)
    {
    printf("Insira o valor %d:\n", i+1);
    scanf("%f", &vetorA[i]);
    //fflush(stdin);
    __fpurge(stdin);
    vetorB[i] = vetorA[i]*2;
    }
    
    printf("\nValores resultantes:\n");
    for (int i = 0; i < 5; i++)
    {
        if (i == 4)
            {
                printf(" %.1f.\n", vetorB[i]);
            }
            else {
                printf(" %.1f,", vetorB[i]);
            }
    }

    return 0;
    system("pause");
}

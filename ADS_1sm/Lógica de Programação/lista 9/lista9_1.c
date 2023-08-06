#include <stdio.h>
#include <stdlib.h>

#define MATRIZ_TAM 9

int main(void){

    int matriz[MATRIZ_TAM][MATRIZ_TAM];
    int max, min, pMax, cMax, pMin, cMin;

    for (int i = 0; i < MATRIZ_TAM; i++)
    {
        for (int j = 0; j < MATRIZ_TAM; j++)
        {
            printf("Digite o elemento [%d][%d] da matriz:", i+1, j+1);
            scanf("%d", &matriz[i][j]);
            //fflush(stdin);
            __fpurge(stdin);
        }
    }
    
    max = matriz[0][0] - 1;
    min = matriz[0][0] + 1;

    for (int i = 0; i < MATRIZ_TAM; i++)
    {
        for (int j = 0; j < MATRIZ_TAM; j++)
        {
            if (matriz[i][j] > max)
            {
                max = matriz[i][j];
                pMax = i;
                cMax = j;
            }
            if (matriz[i][j] < min)
            {
                min = matriz[i][j];
                pMin = i;
                cMin = j;
            }
        }
    }
    
    printf("O maior elemento é %d, em [%d][%d].\n", max, pMax+1, cMax+1);
    printf("O menor elemento é %d, em [%d][%d].\n", min, pMin+1, cMin+1);

    return 0;
}

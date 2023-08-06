#include <stdio.h>
#include <stdlib.h>

#define MATRIZ_TAM 3

int main(void){

    float matriz[MATRIZ_TAM][MATRIZ_TAM];
    int linha;

    for (int i = 0; i < MATRIZ_TAM; i++)
    {
        for (int j = 0; j < MATRIZ_TAM; j++)
        {
            printf("Digite o elemento [%d][%d] da matriz: ", i+1, j+1);
            scanf("%f", &matriz[i][j]);
            //fflush(stdin);
            __fpurge(stdin);
        }
    }
    
    printf("\nQual linha deseja exibir? (1 - %d)\n", MATRIZ_TAM);
    scanf("%d", &linha);
    //fflush(stdin);
    __fpurge(stdin);

    if (linha-1 > 0 && linha <= MATRIZ_TAM)
    {
        printf("Linha %d: ", linha);
        for (int j = 0; j < MATRIZ_TAM; j++)
        {
            printf("%.1f ", matriz[linha-1][j]);
        }
    } else
    {
        printf("Linha inválida!\n");
    }

    return 0;
}

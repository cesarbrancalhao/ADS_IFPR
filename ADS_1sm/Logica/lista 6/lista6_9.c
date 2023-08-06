#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char genero[49], corOlhos[49], corCabelo[49];
    int idade[49], pessoas[49], idadeMin = 1000, i = 0;
    int pesquisa1 = 0, pesquisa2 = 0;

    do
    {
        printf("Genero %d:\n", i + 1);
        scanf("%c", &genero[i]);
        __fpurge(stdin);
        //fflush(stdin);

        printf("Cor dos olhos %d:\n", i + 1);
        scanf("%c", &corOlhos[i]);
        __fpurge(stdin);
        //fflush(stdin);

        printf("Cabelo %d:\n", i + 1);
        scanf("%c", &corCabelo[i]);
        __fpurge(stdin);
        //fflush(stdin);
        
        printf("Idade %d:\n", i + 1);
        scanf("%d", &idade[i]);
        __fpurge(stdin);
        //fflush(stdin);

    if (idade[i] < idadeMin)
    {
        idadeMin = idade[i];
    }
    if ((genero[i] == 'm' || genero[i] == 'M') && (idade[i] <= 24 && idade[i] >= 16) && (corOlhos[i] == 'A' || corOlhos[i] == 'a') && (corCabelo[i] == 'C' || corCabelo[i] == 'c'))
    {
        pesquisa1 += 1;
    }

    if ((genero[i] == 'F' || genero[i] == 'f') && idade[i] < 40 && (corOlhos[i] == 'P' || corOlhos[i] == 'p') && (corCabelo[i] == 'P' || corCabelo[i] == 'p'))
    {
        pesquisa2 += 1;
    }
    
    i += 1;
    
    } while (i < 5);
    
    printf("\nMenor idade do grupo: %d\n", idadeMin);
    printf("Resultado da pesquisa 1: %d\n", pesquisa1);
    printf("Resultado da pesquisa 2: %d\n", pesquisa2);

    return 0;
}
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int pessoa[9], i = 0, j=0, wNum = 0;
    float wSoma = 0;
    char genero;

    do
    {
        __fpurge(stdin);
        //fflush(stdin);
        printf("Insira a idade da pessoa %d: ", i+1);
        scanf("%d", &pessoa[i]);
        __fpurge(stdin);
        //fflush(stdin);
        printf("Insira o gênero da pessoa %d [F/M]: ", i+1);
        scanf("%c", &genero);
        if (genero == 'M' || genero == 'm')
        {
            j += 1;
        } else if (genero == 'F' || genero == 'f')
        {
            wSoma += pessoa[i];
            wNum += 1;
        }
        
        i++;

    } while (i <= 9);

    int lowest = pessoa[0], highest = 0;

    for (i = 0; i <= 9; i++)
    {
        if (highest < pessoa[i])
        {
            highest = pessoa[i];
        }
    }

    for (i = 0; i <= 9; i++)
    {
        if (lowest > pessoa[i])
        {
            lowest = pessoa[i];
        }
    }

    wSoma = wSoma / wNum;

    printf("Menor idade: %d\n", lowest);
    printf("Maior idade: %d\n", highest);
    printf("Média da idade das mulheres: %.1f\n", wSoma);
    printf("Quantidade de homens: %d\n", j);

    return 0;
}
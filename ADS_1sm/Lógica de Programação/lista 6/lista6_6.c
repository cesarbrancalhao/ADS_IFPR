#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int aluno = 0;
    float media, A, B, pesos;
    char continuar;

    do
    {

    printf("Insira a nota A:\n");
    scanf("%f", &A);
    __fpurge(stdin);
    //fflush(stdin);

    printf("Insira a nota B:\n");
    scanf("%f", &B);
    __fpurge(stdin);
    //fflush(stdin);

    aluno += 1;
    pesos = 1 + 2;
    media = (A * 1 + B * 2)/pesos;

    printf("Média do aluno %d = %.1f\n", aluno, media);

    printf("Continuar? [S][N]\n");
    scanf("%c", &continuar);

    __fpurge(stdin);
    //fflush(stdin);

    while (continuar != 's' && continuar != 'n' && continuar != 'S' && continuar != 'N')
    {
        printf("Erro: resposta inválida.\n");
        printf("Continuar? [S][N]\n");
        scanf("%c", &continuar);
        
        __fpurge(stdin);
        //fflush(stdin);
    }

    } while (continuar != 'n' && continuar != 'N');

    return 0;
}



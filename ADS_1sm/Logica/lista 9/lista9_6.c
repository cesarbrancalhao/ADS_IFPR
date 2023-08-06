#include <stdio.h>

int main(void) {
    int alunos, notas = 4;

    printf("Qual a quantidade de alunos? ");
    scanf("%d", &alunos);
    __fpurge(stdin);

    float notasS[alunos][notas];

    for (int i = 0; i < alunos; i++) {
        for (int j = 0; j < notas; j++) {
            printf("Insira a nota [%d] do aluno [%d]: ", j + 1, i + 1);
            scanf("%f", &notasS[i][j]);
            __fpurge(stdin);
        }
    }

    printf("ALUNO\tNOTA1\tNOTA2\tNOTA3\tNOTA4\tMEDIA\n");
    for (int i = 0; i < alunos; i++) {
        printf("%d\t", i + 1);
        float soma = 0.0;
        for (int j = 0; j < notas; j++) {
            printf("%.1f\t", notasS[i][j]);
            soma += notasS[i][j];
        }
        float media = soma / notas;
        printf("%.1f\n", media);
    }

    float mediaGer = 0.0;
    for (int i = 0; i < alunos; i++) {
        float soma = 0.0;
        for (int j = 0; j < notas; j++) {
            soma += notasS[i][j];
        }
        mediaGer += soma / notas;
    }
    mediaGer /= alunos;

    printf("MEDIA GERAL.......................: %.1f\n", mediaGer);

    return 0;
}
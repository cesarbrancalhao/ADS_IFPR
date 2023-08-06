#include <stdio.h>
#include <math.h>

int main()
{
    const int bimestresAnuais = 4, numeroDeAlunos = 4;

    float notasAlunos[numeroDeAlunos][bimestresAnuais] = {0};
    float mediasAlunos[numeroDeAlunos] = {0};

    float media = 0;

    int aluno = 0, notas = 0;

    printf("Insira as 4 notas do aluno 1:\n");

    while (aluno < numeroDeAlunos)
        {
            while (notas < bimestresAnuais)
            {
                scanf("%f", &notasAlunos[aluno][notas]);
                media += notasAlunos[aluno][notas];
                ++notas;
            }
            mediasAlunos[aluno] = media / bimestresAnuais;
            printf("\n");
            media = 0;
            ++aluno;
            notas = 0;
            if (aluno < 4)
            {
            printf("Insira as 4 notas do aluno %i:\n", aluno + 1);
            }
        }

    aluno = 0;
    while (aluno < numeroDeAlunos)
    {
        printf("A nota do aluno %i é %.1f\n", aluno + 1, mediasAlunos[aluno]);
        ++aluno;
    }
    
    return 0;
}
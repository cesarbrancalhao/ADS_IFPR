#include <stdio.h>
#include <stdlib.h>

int main(void){

    int codigo, i;
    float nota, sA = 0, sB = 0, sC = 0, sD = 0, sE = 0;
    int qA = 0, qB = 0, qC = 0, qD = 0, qE = 0;

    float mA = 0, mB = 0, mC = 0, mD = 0, mE = 0;

    for (i = 1; i <= 5; i++) {
        printf("Aluno %d\n", i);
        printf("Código: ");
        scanf("%d", &codigo);
        //fflush(stdin);
        __fpurge(stdin);

        printf("Nota: ");
        scanf("%f", &nota);
        //fflush(stdin);
        __fpurge(stdin);

        if (nota >= 9 && nota <= 10) {
            printf("Conceito: A\n");
            sA += nota;
            qA++;
        } else if (nota >= 7 && nota <= 8.9) {
            printf("Conceito: B\n");
            sB += nota;
            qB++;
        } else if (nota >= 5 && nota <= 6.9) {
            printf("Conceito: C\n");
            sC += nota;
            qC++;
        } else if (nota >= 3 && nota <= 4.9) {
            printf("Conceito: D\n");
            sD += nota;
            qD++;
        } else if (nota >= 0 && nota <= 2.9) {
            printf("Conceito: E\n");
            sE += nota;
            qE++;
        } else {
            printf("Nota inválida\n");
            i--;
        }

        printf("\n");
    }

    if (qA != 0)
    {
        mA = sA / qA;
    }
    if (qB != 0)
    {
        mB = sB / qB;
    }
    if (qC != 0)
    {
        mC = sC / qC;
    }
    if (qD != 0)
    {
        mD = sD / qD;
    }
    if (qE != 0)
    {
        mE = sE / qE;
    }

    printf("Quantidade de alunos:\n");
    printf("Conceito A: %d\n", qA);
    printf("Conceito B: %d\n", qB);
    printf("Conceito C: %d\n", qC);
    printf("Conceito D: %d\n", qD);
    printf("Conceito E: %d\n", qE);

    printf("\nMédia de alunos:\n");
    printf("Conceito A: %.1f\n", mA);
    printf("Conceito B: %.1f\n", mB);
    printf("Conceito C: %.1f\n", mC);
    printf("Conceito D: %.1f\n", mD);
    printf("Conceito E: %.1f\n", mE);

    system("pause");
    return 0;
}
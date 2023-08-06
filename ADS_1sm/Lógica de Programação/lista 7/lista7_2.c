#include <stdio.h>
#include <stdlib.h>

int main(void){

    int d = 30;
    float max, min, mE = 0, mD = 0, n;
    printf("Insira %d valores reais.\n", d);
    scanf("%f", &n);
    fflush(stdin);
    //__fpurge(stdin);
    min = n;
    max = n;

    if (n > 5.9)
    {
        mE += n;
        mD += 1;
    }

    for (int i = 0; i < d-1; i++)
    {
        scanf("%f", &n);
        fflush(stdin);

    if (n < min)
    {
        min = n;
    }
    if (n > max)
    {
        max = n;
    }

    if (n > 5.9)
    {
        mE += n;
        mD += 1;
    }}

    mE = mE / mD;
    
    printf("Valor máximo: %.1f.\n", max);
    printf("Valor mínimo: %.1f.\n", min);
    printf("Valor médio (>5.9): %.1f.\n\n", mE);

    system("pause");
    return 0;
}
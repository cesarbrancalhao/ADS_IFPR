#include <stdio.h>
#include <stdlib.h>

int main(void){

    int i, qPo = 0, qPa = 0, qIm = 0, qId = 0, sPo = 0, sPa = 0, sIm = 0, sId = 0;
    int vI, vA;
    float sIdd = 0;

    printf("Insira o valor inicial.\n");
    scanf("%d", &vI);
    //fflush(stdin);
    __fpurge(stdin);

    printf("Insira o valor final.\n");
    scanf("%d", &vA);
    //fflush(stdin);
    __fpurge(stdin);

    for (i = vI; i < vA; i++)
    {
        if (i > 0)
        {
            qPo++;
            sPo += i;
        }

        if (i % 2 == 0)
        {
            qPa++;
            sPa += i;
        } else
        {
            qIm++;
            sIm += i;
            if (i % 3 == 0 && i % 4 == 0)
            {
                qId++;
                sId += i;
            }
        }
    }

    if (qId != 0)
    {
        sIdd = sId / qId;
    }
    
    
    printf("Quantidade de números inteiros e positivos: %d\n", qPo);
    printf("Média dos números inteiros e positivos: %.f\n", (float) sPo / qPo);
    printf("Quantidade de números pares: %d\n", qPa);
    printf("Média dos números pares: %.f\n", (float) sPa / qPa);
    printf("Quantidade de números ímpares: %d\n", qIm);
    printf("Média dos números ímpares: %.f\n", (float) sIm / qIm);
    printf("Quantidade de números ímpares divisíveis por 3 e 4: %d\n", qId);
    printf("Média dos números ímpares divisíveis por 3 e 4: %.f\n", sIdd);

    system("pause");
    return 0;
}
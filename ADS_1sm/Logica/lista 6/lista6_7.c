#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char time = 'n';
    float pA, pC, pF, torcedoresTotal = 0, atleticoT = 0, coritibaT = 0, fozT = 0;

    do
    {
        printf("Qual time você torce?\n");
        scanf("%c", &time);

        __fpurge(stdin);
        //fflush(stdin);
        
        if (time == 'A' || time == 'a')
        {
            torcedoresTotal += 1;
            atleticoT += 1;
        } else if (time == 'C' || time == 'c')
        {
            torcedoresTotal += 1;
            coritibaT += 1;
        } else if (time == 'F' || time == 'f')
        {
            torcedoresTotal += 1;
            fozT += 1;
        }

    } while (time != 's' && time != 'S');

    printf("Total de torcedores: %.f\n", torcedoresTotal);
    printf("\nTorcedores por time;\n");
    printf("Atletico = %.f.\n", atleticoT);
    printf("Coritiba = %.f.\n", coritibaT);
    printf("Foz = %.f.\n", fozT);
    printf("\nPorcentagem de torcedores por time:\n");
    
    pA = (atleticoT / torcedoresTotal) * 100;
    pC = (coritibaT / torcedoresTotal) * 100;
    pF = (fozT / torcedoresTotal) * 100;

    printf("Atletico = %.1f%%, Coritiba = %.1f%%, Foz = %.1f%%.\n", pA, pC, pF);

    return 0;
}
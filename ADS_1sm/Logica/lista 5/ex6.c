#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i = 0, n = 1, d = 0, s = 0, m = 0;
    float r;

    while (i != 15)
    {
        printf("Insira o número %d.\n", n);
        scanf("%d", &d);

        if (d > 10)
        {
            s = s + d;
            m += 1;
        }
        
        i++;
        n++;
    }
    
    r = s / m;

    printf("Média  = %.1f.\n", r);

    return 0;
}
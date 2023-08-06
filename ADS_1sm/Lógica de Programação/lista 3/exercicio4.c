#include <stdio.h>
#include <math.h>

int main(void)
{
    float i, raiz, cubo;

    printf("Insira um número real.\n");
    scanf("%f", &i);

    if (i > 0)
    {
        raiz = sqrt(i);
        printf("Raiz: %.1f\n", raiz);
    } else if (i < 0)
    {
        cubo = pow(i, 3);
        printf("Cubo: %.1f\n", cubo);
    } else
    {
        printf("Insira outro número.\n");
    }
    
    return 0;
}
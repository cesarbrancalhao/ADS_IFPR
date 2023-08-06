#include <stdio.h>
#include <math.h>

int main()
{
    float x, y, z;

    printf("Insira um número real: ");
    scanf("%f", &x);

    y = floor(x);
    z = ceil(x);

    printf("O valor %0.1f arredondado para cima é %.0f, e para baixo é %.0f\n", x, z, y);

    return 0;
}
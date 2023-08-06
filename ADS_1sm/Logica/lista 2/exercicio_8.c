#include <stdio.h>
#include <math.h>

int main(void)
{
    float a, b, c, d, mq;

    printf("Insira quatro valores reais:\n");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    mq = sqrt((pow(a, 2) + pow(b, 2) + pow(c, 2) + pow(d, 2))/4);

    printf("A média quadrática dos valores é %.1f\n", mq);

    return 0;
}
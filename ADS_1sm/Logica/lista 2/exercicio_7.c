#include <stdio.h>
#include <math.h>

int main()
{
    float a, b, c, d, mh;

    printf("Insira quatro valores reais.\n");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    mh = 4 / ((1/a)+(1/b)+(1/c)+(1/d));

    printf("A média harmônica desses valores é %.1f.\n", mh);
    return 0;
}

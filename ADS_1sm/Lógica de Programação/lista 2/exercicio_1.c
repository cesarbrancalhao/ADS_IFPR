#include <stdio.h>
#include <math.h>

int main(void)
{
    int x, y, z;
    float media;

    printf("Insira as 3 notas:\n");
    scanf("%d %d %d", &x, &y, &z);

    media = (float)(x + y + z) / 3;

    printf("A média aritmética é %.1f\n", media);

    return 0;
}

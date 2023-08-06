#include <stdio.h>
#include <math.h>

int main(void)
{
    char estado;

    printf("Insira seu estado civil: ");
    scanf("%c", &estado);

    if (estado == 's' || estado == 'S')
    {
        printf("Solteiro(a).\n");
    } else if (estado == 'c' || estado == 'C')
    {
        printf("Casado(a).\n");
    } else if (estado == 'd' || estado == 'D')
    {
        printf("Divorciado(a).\n");
    } else if (estado == 'v' || estado == 'V')
    {
        printf("Viúvo(a).\n");
    } else
    {
        printf("Estado civil inválido.\n");
    }
}
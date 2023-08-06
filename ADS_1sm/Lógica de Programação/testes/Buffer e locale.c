#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(void)
{
    char letra1, letra2;

    printf("Insira um caractere: ");
    scanf("%c",&letra1);

    fflush(stdin);
    __fpurge(stdin);

    printf("Insira outro caractere: ");
    scanf("%c",&letra2);

    printf("Acentuação");
}
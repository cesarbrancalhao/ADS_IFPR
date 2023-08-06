#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(void)
{
    printf("Acentuação\n");
    printf("Troca\n", setlocale(LC_ALL,""));

    printf("Acentuação\n");

    system("pause");
    return 0;
}
#include <stdio.h>
#include <locale.h>

int main(void)
{
    setlocale(LC_ALL,"");

    int dia;

    char d1[] = {"Domingo"}, d2[] = {"Segunda"}, d3[] = {"Terça"}, d4[] = {"Quarta"}, d5[] = {"Quinta"}, d6[] = {"Sexta"}, d7[] = {"Sábado"};

    printf("Insira o número do dia da semana.\n");
    scanf("%d",&dia);

    switch (dia)
    {
    case 1:
        printf("%s.\n", d1);
        break;

    case 2:
        printf("%s.\n", d2);
        break;

    case 3:
        printf("%s.\n", d3);
        break;

    case 4:
        printf("%s.\n", d4);
        break;

    case 5:
        printf("%s.\n", d5);
        break;

    case 6:
        printf("%s.\n", d6);
        break;

    case 7:
        printf("%s.\n", d7);
        break;
    
    default:
        printf("Erro, número inválido.\n");
        break;
    }

    return 0;
}
#include <stdio.h>
#include <locale.h>

int main(void)
{
    setlocale(LC_ALL,"Portuguese_Brazil.1252");

    int mes;

    char tri1[] = {"1° Trimestre"}, tri2[] = {"2° Trimestre"}, tri3[] = {"3° Trimestre"}, tri4[] = {"4° Trimestre"};

    printf("Insira o número do mês.\n");
    scanf("%d",&mes);

    switch(mes)
    {
        case 1:
        case 2:
        case 3:
            printf("%s.\n", tri1);
            break;
        
        case 4:
        case 5:
        case 6:
            printf("%s.\n", tri2);
            break;

        case 7:
        case 8: 
        case 9:
            printf("%s.\n", tri3);
            break;

        case 10:
        case 11:
        case 12:
            printf("%s.\n", tri4);
            break;

        default:
            printf("Erro, entrada inválida.\n");
            break;
    }

    return 0;
}
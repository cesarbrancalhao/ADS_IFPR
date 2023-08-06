#include <stdio.h>
#include <locale.h>

int main(void)
{
    setlocale(LC_ALL,"Portuguese_Brazil.1252");

    int mes;

    int jan = 31, feb = 28, febb = 29, mar = 31, abr = 30, mai = 31, jun = 30, jul = 31, ago = 31, set = 30, out = 31, nov = 30, dez = 31;

    char bi;

    printf("Insira o número do mês.\n");
    scanf("%d",&mes);
    fflush(stdin);

    switch (mes)
    {
    case 1:
        printf("%d dias.\n", jan);
        break;
    
    case 2:
        printf("É ano bissexto? [S] [N]\n");
        scanf("%c", &bi);

            switch (bi)
            {
            case 's':
            case 'S':
                printf("%d dias.\n", febb);
                break;
            
            case 'n':
            case 'N':
                printf("%d dias.\n", feb);
                break;

            default:
                printf("Resposta inválida.\n");
                break;
            }
        break;

    case 3:
        printf("%d dias.\n", mar);
        break;

    case 4:
        printf("%d dias.\n", abr);
        break;

    case 5:
        printf("%d dias.\n", mai);
        break;

    case 6:
        printf("%d dias.\n", jun);
        break;

    case 7:
        printf("%d dias.\n", jul);
        break;

    case 8:
        printf("%d dias.\n", ago);
        break;

    case 9:
        printf("%d dias.\n", set);
        break;

    case 10:
        printf("%d dias.\n", out);
        break;

    case 11:
        printf("%d dias.\n", nov);
        break;

    case 12:
        printf("%d dias.\n", dez);
        break;
    
    default:
        printf("Mês inválido.\n");
        break;
    }

    return 0;
}
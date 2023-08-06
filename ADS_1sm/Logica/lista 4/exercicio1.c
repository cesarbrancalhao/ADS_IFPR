#include <stdio.h>
#include <locale.h>

int main(void)
{
    setlocale(LC_ALL,"");

    char carteira;

    char a[] = {"Categoria A: Moto"};
    char b[] = {"Categoria B: Carro"};
    char c[] = {"Categoria C: Caminhão"};
    char d[] = {"Categoria D: Ônibus"};
    char e[] = {"Categoria E: Carreta"};

    printf("Qual carteira de motorista você deseja conferir?\n");
    scanf("%c", &carteira);

    switch (carteira)
    {
    case 'a':
    case 'A':
        printf("%s.\n", a);
        break;
    
    case 'b':
    case 'B':
        printf("%s.\n", b);
        break;

    case 'c':
    case 'C':
        printf("%s.\n", c);
        break;

    case 'd':
    case 'D':
        printf("%s.\n", d);
        break;

    case 'e':
    case 'E':
        printf("%s.\n", e);
        break;

    default:
        printf("Carteira inválida.\n");
        break;
    }

    return 0;
}

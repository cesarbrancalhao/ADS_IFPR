#include <stdio.h>

int main()
{
    int idade;

    printf("Favor informar idade:\n");
    scanf("%i", &idade);

    if (idade < 18)
    {
        printf("Bebidas alcoólicas estão proibidas.\n");
    } else
    {
        printf("Bebidas alcoólicas liberadas.\n");
    }
    

    return 0;
}
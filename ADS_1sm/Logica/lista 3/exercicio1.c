#include <stdio.h>

int main(void)
{
    int num;

    printf("Enter a number: ");
    scanf("%d", &num);

    if (num == 0)
    {
        printf("NULO\n");
    } else if (num > 0)
    {
        printf("Positivo\n");
    } else {
        printf("Negativo\n");
    }
    
    return 0;
}

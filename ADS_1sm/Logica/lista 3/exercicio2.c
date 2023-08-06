#include <stdio.h>
#include <math.h>

int main(void)
{
    int n;
    
    printf("Digite o número: ");
    scanf("%d", &n);

    if (n %3 == 0)
    {
        printf("É múltiplo de 3\n");
    } else {
        printf("Não é múltiplo de 3\n");
    }
    
    return 0;
}
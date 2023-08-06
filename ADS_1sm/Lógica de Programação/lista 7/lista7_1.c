#include <stdio.h>
#include <stdlib.h>

int main(void){

    int n, j, i;
    printf("Insira o número.\n");
    scanf("%d", &n);
    fflush(stdin);
    //__fpurge(stdin);

    printf("Insira o número de iterações.\n");
    scanf("%d", &j);
    
    for (int i = 0; i < j+1; i++)
    {
        printf("%d x %d = %d.\n", n, i+1, n*(i+1));
    }
    

    system("pause");
    return 0;
}

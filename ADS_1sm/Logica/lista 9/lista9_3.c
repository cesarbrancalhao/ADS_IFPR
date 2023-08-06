#include <stdio.h>
#include <stdlib.h>

int main(void) {
    
    int m, n;

    printf("Insira o número de linhas e colunas.\n");
    scanf("%d", &m); //fflush(stdin);
    __fpurge(stdin);
    scanf("%d", &n); //fflush(stdin);
    __fpurge(stdin);

    int A[m][n], B[m][n], C[m][n];

    printf("\n");

    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printf("Insira o valor [%d][%d] da matriz A: ", i+1, j+1);
            scanf("%d", &A[i][j]);
        }
    }

    printf("\n");
    
    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printf("Insira o valor [%d][%d] da matriz B: ", i+1, j+1);
            scanf("%d", &B[i][j]);
        }
    }

    printf("\n");

    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            C[i][j] = A[i][j] + B[i][j];
        }
    }

    printf("Matriz C:\n");
    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printf("%d ", C[i][j]);
        }
        printf("\n");
    }
    

    return 0;
}
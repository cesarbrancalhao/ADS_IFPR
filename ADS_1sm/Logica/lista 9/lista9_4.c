#include <stdio.h>
#include <stdlib.h>

int main(void) {
    
    int m, n;

    printf("Insira o número de linhas e colunas.\n");
    scanf("%d", &m); //fflush(stdin);
    __fpurge(stdin);
    scanf("%d", &n); //fflush(stdin);
    __fpurge(stdin);

    int A[m][n], T[n][m];

    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printf("Insira o valor [%d][%d] da matriz A: ", i+1, j+1);
            scanf("%d", &A[i][j]);
        }
    }

    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            T[j][i] = A[i][j];
        }
    }

    printf("Matriz A:\n");
    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printf("%d ", A[i][j]);
        }
        printf("\n");
    }

    printf("Matriz T:\n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            printf("%d ", T[i][j]);
        }
        printf("\n");
    }    

    return 0;
}
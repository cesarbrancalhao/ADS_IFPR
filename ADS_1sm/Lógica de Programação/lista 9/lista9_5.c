#include <stdio.h>
#include <stdlib.h>

#define TAM 5

int main(void) {
    
    int m[TAM][TAM];
    int opcao;

    for (int i = 0; i < TAM; i++)
    {
        for (int j = 0; j < TAM; j++)
        {
            printf("Insira o valor [%d][%d] da matriz: ", i+1, j+1);
            scanf("%d", &m[i][j]);
            //fflush(stdin);
            __fpurge(stdin);
        }
    }

    printf("\nMENU:\n");
    printf("0. Sair.\n");
    printf("1. Mostrar todos os elementos da matriz.\n");
    printf("2. Mostrar a quarta linha e a primeira coluna.\n");
    printf("3. Mostrar a soma dos elementos da diagonal principal.\n");
    printf("4. Atribuir 0 para os valores negativos fora da diagonal principal.\n");
    printf("5. Buscar um elemento na matriz.\n");
    printf("\nInsira uma opção.\n");

    scanf("%d", &opcao);
    //fflush(stdin);
    __fpurge(stdin);
    
    int soma = 0, elemento, elementoCon = 0;

    switch (opcao) {
    case 1:
        printf("\n");
        for (int i = 0; i < TAM; i++)
        {
            for (int j = 0; j < TAM; j++)
            {
                printf("%d ", m[i][j]);
            }
            printf("\n");
        }
        
        break;

    case 2:
        printf("\n");
        printf("Quarta linha:\n");
        for (int j = 0; j < TAM; j++)
        {
            printf("%d ", m[3][j]);
        }
        printf("\nPrimeira coluna:\n");
        for (int i = 0; i < TAM; i++)
        {
            printf("%d ", m[i][0]);
        } printf("\n");
        
        break;
    
    case 3:
        printf("\n");
        for (int i = 0; i < TAM; i++)
        {
            soma += m[i][i];
        }
        printf("Soma: %d", soma);

        break;

    case 4:
        printf("\n");
        for (int i = 0; i < TAM; i++)
        {
            for (int j = 0; j < TAM; j++)
            {
                if (i != j && m[i][j] > 0)
                {
                    m[i][j] = 0;
                }
            }
        }
        

        break;

    case 5:
        printf("\n");
        printf("Insira o elemento: ");
        scanf("%d", &elemento);
        //fflush(stdin);
        __fpurge(stdin);

        for (int i = 0; i < TAM; i++)
        {
            for (int j = 0; j < TAM; j++)
            {
                if (m[i][j] == elemento)
                {
                    printf("Elemento encontrado em: [%d][%d].\n", i, j);
                    elementoCon = 1;
                }
                
            }
            
        }
        if (!elementoCon)
        {
            printf("Elemento %d não encontrado", elemento);
        }
        
        break;

    default:
        printf("\n");
        printf("Opção inválida.\n");
        break;

    } while (opcao != 0);

    return 0;
}
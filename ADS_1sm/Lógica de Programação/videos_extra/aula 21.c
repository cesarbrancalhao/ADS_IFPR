#include <stdio.h>

int main(void)
{
    int k;

    for (int i = 1; i <= 10; i++){
        printf("**Volta %i**\n", i);
        for (int j = 1; j <= 10; j++){
            printf("Ponto %i\n", j);
            for (k = 1; k < 10; k++){
                printf(" Candidato %i\n", k);
            }
            
        }
        printf("\n");
    }
    return 0;
}
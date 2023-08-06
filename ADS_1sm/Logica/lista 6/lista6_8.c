#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int contagem = 1, idadeH, idadeM, idadeHmin = 1000, idadeMmax = 0;
    float peso, pesoMin = 1000, pesoMax = 0;
    char continuar, sexo;

    do
    {
        printf("Insira o sexo da pessoa %d (H/M):\n", contagem);
        scanf("%c", &sexo);
        __fpurge(stdin);
        //fflush(stdin);

        if (sexo == 'h' || sexo == 'H')
        {
            printf("Insira a idade da pessoa %d.\n", contagem);
            scanf("%d", &idadeH);
            __fpurge(stdin);
            //fflush(stdin);;

            if (idadeH < idadeHmin)
            {
                idadeHmin = idadeH;
            }
            
        } else if (sexo == 'm' || sexo == 'M')
        {
            printf("Insira a idade da pessoa %d.\n", contagem);
            scanf("%d", &idadeM);
            __fpurge(stdin);
            //fflush(stdin);

            if (idadeM > idadeMmax)
            {
                idadeMmax = idadeM;
            }
        }

        printf("Insira a peso da pessoa %d (em KG).\n", contagem);
        scanf("%f", &peso);
        __fpurge(stdin);
        //fflush(stdin);

        if (peso < pesoMin)
        {
            pesoMin = peso;
        }
        if (peso > pesoMax)
        {
            pesoMax = peso;
        }

        printf("Deseja ler os dados de mais uma pessoa? (S/N)\n");
        scanf("%c", &continuar);
        __fpurge(stdin);
        //fflush(stdin);

        if (continuar == 's' || continuar == 'S')
        {
            contagem += 1;
        }

        while (continuar != 's' && continuar != 'n' && continuar != 'S' && continuar != 'N')
            {
                printf("Erro: resposta inválida.\n");
                printf("Deseja ler os dados de mais uma pessoa? (S/N)\n");
                scanf("%c", &continuar);
                
                __fpurge(stdin);
                //fflush(stdin);
            }
                
    } while (continuar != 'n' && continuar != 'N');
        
    printf("\nIdade da mulher mais velha: %d.\n", idadeMmax);
    printf("Idade do homem mais novo: %d.\n", idadeHmin);
    printf("Pessoa com maior peso: %.0f.\n", pesoMax);
    printf("Pessoa com menor peso: %.0f.\n", pesoMin);

    return 0;
}
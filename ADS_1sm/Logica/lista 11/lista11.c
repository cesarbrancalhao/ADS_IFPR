#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define TAM n

int main(void){
    int n;
    printf("Insira o número de pessoas que serão cadastradas: ");
    scanf("%d", &n);

    struct TPessoa {
        int codigo;
        char nome[100];
        char genero;
        int idade;
        float altura;
        float peso;
    } cadastro[TAM];
    
    
    for (int i = 1; i <= TAM; i++)
    {
            printf("\nCadastro %d.\n", i);

            printf("Código: ");
            scanf("%d", &cadastro[i].codigo);
            fflush(stdin);
            //__fpurge(stdin);

            printf("Nome: ");
            fgets(cadastro[i].nome, sizeof(cadastro[i].nome), stdin);
            cadastro[i].nome[strlen(cadastro[i].nome)-1] = '\0';
            fflush(stdin);
            //__fpurge(stdin);

            printf("Gênero [M/F]: ");
            scanf("%c", &cadastro[i].genero);
            fflush(stdin);
            //__fpurge(stdin);
            while (cadastro[i].genero != 'm' && cadastro[i].genero != 'M' && cadastro[i].genero != 'F' && cadastro[i].genero != 'f')
            {
                printf("Gênero inválido, tente novamente.\n");
                printf("Gênero [M/F]: ");
                scanf("%c", &cadastro[i].genero);
                fflush(stdin);
                //__fpurge(stdin);
            }
            
            printf("Idade: ");
            scanf("%d", &cadastro[i].idade);
            while (cadastro[i].idade > 150 && cadastro[i].idade < 1)
            {
                printf("Idade inválida, tente novamente.\n");
                printf("Idade: ");
                scanf("%d", &cadastro[i].idade);
            }

            printf("Altura: ");
            scanf("%f", &cadastro[i].altura);
            while (cadastro[i].altura < 0)
            {
                printf("Altura inválida, tente novamente.\n");
                printf("Altura: ");
                scanf("%f", &cadastro[i].altura);
            }
            
            printf("Peso: ");
            scanf("%f", &cadastro[i].peso);
            while (cadastro[i].peso < 0)
            {
                printf("Peso inválido, tente novamente.\n");
                printf("Peso: ");
                scanf("%f", &cadastro[i].peso);
            }
    }

    int menu, cod, alterar;
    printf("\n");
    printf("Menu:\n");
    printf("1. Adicionar um cadastro\n2. Alterar os dados de uma pessoa\n3. Excluir um cadastro\n4. Verificar um cadastro\n5. Verificar todos os cadastros\n0. Sair\n");

    scanf("%d", &menu);
    fflush(stdin);
    //__fpurge(stdin);
    
    while (menu != 0)
    {
        switch (menu)
        {
        case 1:
            n += 1;
            printf("\nCadastro %d.\n", n);
            printf("Código: ");
            scanf("%d", &cadastro[n].codigo);
            fflush(stdin);
            //__fpurge(stdin);

            printf("Nome: ");
            fgets(cadastro[n].nome, sizeof(cadastro[n].nome), stdin);
            cadastro[n].nome[strlen(cadastro[n].nome)-1] = '\0';
            fflush(stdin);
            //__fpurge(stdin);

            printf("Gênero [M/F]: ");
            scanf("%c", &cadastro[n].genero);
            fflush(stdin);
            //__fpurge(stdin);
            while (cadastro[n].genero != 'm' && cadastro[n].genero != 'M' && cadastro[n].genero != 'F' && cadastro[n].genero != 'f')
            {
                printf("Gênero inválido, tente novamente.\n");
                printf("Gênero [M/F]: ");
                scanf("%c", &cadastro[n].genero);
                fflush(stdin);
                //__fpurge(stdin);
            }
            
            printf("Idade: ");
            scanf("%d", &cadastro[n].idade);
            fflush(stdin);
            //__fpurge(stdin);
            while (cadastro[n].idade > 150 && cadastro[n].idade < 1)
            {
                printf("Idade inválida, tente novamente.\n");
                printf("Idade: ");
                scanf("%d", &cadastro[n].idade);
                fflush(stdin);
                //__fpurge(stdin);
            }

            printf("Altura: ");
            scanf("%f", &cadastro[n].altura);
            fflush(stdin);
            //__fpurge(stdin);
            while (cadastro[n].altura < 0)
            {
                printf("Altura inválida, tente novamente.\n");
                printf("Altura: ");
                scanf("%f", &cadastro[n].altura);
                fflush(stdin);
                //__fpurge(stdin);
            }
            
            printf("Peso: ");
            scanf("%f", &cadastro[n].peso);
            fflush(stdin);
            //__fpurge(stdin);
            while (cadastro[n].peso < 0)
            {
                printf("Peso inválido, tente novamente.\n");
                printf("Peso: ");
                scanf("%f", &cadastro[n].peso);
                fflush(stdin);
                //__fpurge(stdin);
            }
            break;
        
        case 2:
            printf("\nDe qual usuário você deseja alterar os dados? (Insira o número do cadastro)\n");
            scanf("%d", &cod);
            fflush(stdin);
            //__fpurge(stdin);
            if (cod >= 1 && cod <= n)
            {
                do
                {
                printf("\nDeseja alterar outro dado?\n");
                printf("1. Nome\n2. Gënero\n3. Idade\n4. Altura\n5. Peso\n6. Código\n0. Sair\n");
                scanf("%d", &alterar);
                fflush(stdin);
                //__fpurge(stdin);

                    switch (alterar)
                    {
                        case 1:
                            printf("Nome: %s\n", cadastro[cod].nome);
                            printf("Insira o novo nome: ");
                            fgets(cadastro[cod].nome, sizeof(cadastro[cod].nome), stdin);
                            cadastro[cod].nome[strlen(cadastro[cod].nome)-1] = '\0';
                            fflush(stdin);
                            //__fpurge(stdin);
                            break;

                        case 2:
                            printf("Gênero: %c\n", cadastro[cod].genero);
                            printf("Insira o novo genero: ");
                            scanf("%c", &cadastro[cod].genero);
                            fflush(stdin);
                            //__fpurge(stdin);
                            break;
                    
                        case 3:
                            printf("Idade: %d\n", cadastro[cod].idade);
                            printf("Insira a nova idade: ");
                            scanf("%d", &cadastro[cod].idade);
                            fflush(stdin);
                            //__fpurge(stdin);
                            break;

                        case 4:
                            printf("Altura: %.1f\n", cadastro[cod].altura);
                            printf("Insira a nova altura: ");
                            scanf("%f", &cadastro[cod].altura);
                            fflush(stdin);
                            //__fpurge(stdin);
                            break;

                        case 5:
                            printf("Peso: %.1f\n", cadastro[cod].peso);
                            printf("Insira o novo peso: ");
                            scanf("%f", &cadastro[cod].peso);
                            fflush(stdin);
                            //__fpurge(stdin);
                            break;

                        case 6:
                            printf("Código: ");
                            printf("Insira o novo código: ");
                            scanf("%d", &cadastro[n].codigo);
                            fflush(stdin);
                            //__fpurge(stdin);
                            break;

                        case 0:
                            printf("\n");
                            break;

                        default:
                            printf("Opção inválida.");
                            break;
                    }
                } while (alterar != 0);
            } else { printf("Usuário inválido.\n"); }
            break; //fim do case de alteração
            
        case 3:
            printf("\nQual cadastro você deseja excluir? (Insira o número do cadastro)\n");
            scanf("%d", &cod);
            fflush(stdin);
            //__fpurge(stdin);

            if (cod >= 1 && cod <= n)
            {
                cadastro[cod].codigo = 0;
                for (int i = 0; i <= 100; i++)
                {
                    cadastro[cod].nome[i] = '\0';
                }
                cadastro[cod].genero = '\0';
                cadastro[cod].idade = 0;
                cadastro[cod].altura = 0;
                cadastro[cod].peso = 0;
            } else { printf("Usuário inválido.\n"); }

            n -= 1;

            break;

        case 4:
            printf("\nQual cadastro você deseja verificar? (Insira o número do cadastro)\n");
            scanf("%d", &cod);

            if (cod >= 1 && cod <= n)
            {
                printf("\nCódigo: %d\n", cadastro[cod].codigo);
                printf("Nome: %s\n", cadastro[cod].nome);
                printf("Gênero: %c\n", cadastro[cod].genero);
                printf("Idade: %d\n", cadastro[cod].idade);
                printf("Altura: %.1f\n", cadastro[cod].altura);
                printf("Peso: %.1f\n", cadastro[cod].peso);
            } else { printf("Usuário inválido.\n"); }

            break;

        case 5:
            for (int i = 1; i <= n; i++)
            {
                printf("\nCadastro: %d\n", i);
                printf("Código: %d\n", cadastro[i].codigo);
                printf("Nome: %s\n", cadastro[i].nome);
                printf("Gênero: %c\n", cadastro[i].genero);
                printf("Idade: %d\n", cadastro[i].idade);
                printf("Altura: %.1f\n", cadastro[i].altura);
                printf("Peso: %.1f\n", cadastro[i].peso);
            }
            break;

        default:
            printf("Opção inválida.");
            break;
        }

    printf("\n");
    printf("Menu:\n");
    printf("1. Adicionar um cadastro\n2. Alterar os dados de uma pessoa\n3. Excluir um cadastro\n4. Verificar um cadastro\n5. Verificar todos os cadastros\n0. Sair\n");

    scanf("%d", &menu);
    fflush(stdin);
    //__fpurge(stdin);
    }

    return 0;
}

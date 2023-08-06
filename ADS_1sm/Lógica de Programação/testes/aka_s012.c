#include <locale.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>

#define TAM 50

struct TPessoa {
    int cdg;
    char nome[100];
    char gen;
    int idade;
    float altura, peso;
};

void opcao1(struct TPessoa cadastro[], int *n) {
    int quantidade;
    printf("Quantas pessoas deseja cadastrar?\n");
    scanf("%d", &quantidade);

    if ((*n) + quantidade <= TAM) {
        for (int i = 0; i < quantidade; i++) {
            printf("Cadastre uma pessoa:\n");
            printf("Digite o código (1 número): \n");
            scanf("%d", &cadastro[*n].cdg);

            printf("Digite o nome: \n");
            scanf("%s", cadastro[*n].nome);

            printf("Digite o gênero\nuse [M] para masculino e [F] para feminino\n");
            scanf(" %c", &cadastro[*n].gen);

            printf("Digite a idade: \n");
            scanf("%d", &cadastro[*n].idade);

            printf("Insira a altura: \n");
            scanf("%f", &cadastro[*n].altura);

            printf("Insira o peso: \n");
            scanf("%f", &cadastro[*n].peso);

            (*n)++;
        }

        printf("Cadastro realizado com sucesso.\n");
    } else {
        printf("Número de cadastros excedido.\n");
    }
}

void opcao2(struct TPessoa cadastro[], int n, int *continuar) {
    int opcao;
    int codigo;
    printf("Você escolheu alterar os dados de um cadastrado, o quê deseja mudar?\n");

    printf("Digite o código do usuário que deseja mudar: ");
    scanf("%d", &codigo);

    int pessoaEncontrada = 0; // indicar se a pessoa foi encontrada

    for (int i = 0; i < n; i++) {
        if (codigo == cadastro[i].cdg) {
            pessoaEncontrada = 1;
            printf("1. Mudar o nome do cadastrado.\n");
            printf("2. Mudar o gênero do cadastrado.\n");
            printf("3. Mudar a idade do cadastrado.\n");
            printf("4. Mudar a altura do cadastrado.\n");
            printf("5. Mudar o peso do cadastrado.\n");
            printf("6. SAIR DO MODO DE EDIÇÃO\n");
            printf("Opção: ");
            scanf("%d", &opcao);

            switch (opcao) {
                case 1:
                    printf("Digite o nome atualizado de %s: ", cadastro[i].nome);
                    scanf("%s", cadastro[i].nome);
                    break;

                case 2:
                    printf("Digite o gênero atualizado do cadastrado: ");
                    scanf(" %c", &cadastro[i].gen);
                    break;

                case 3:
                    printf("Digite a idade atualizada do cadastrado: ");
                    scanf("%d", &cadastro[i].idade);
                    break;

                case 4:
                    printf("Digite a altura atualizada do cadastrado: ");
                    scanf("%f", &cadastro[i].altura);
                    break;

                case 5:
                    printf("Digite o peso atualizado do cadastrado: ");
                    scanf("%f", &cadastro[i].peso);
                    break;

                case 6:
                    *continuar = 1;
                    break;

                default:
                    printf("Opção inválida. Tente novamente.\n");
                    break;
            }
            break;
        }
    }

    if (!pessoaEncontrada) {
        printf("Código não encontrado.\n");
    }
}

void opcao3(struct TPessoa cadastro[], int *continuar) {
    int codigo;

    printf("Você escolheu excluir os dados de um cadastrado.\n");

    printf("Digite o código do usuário que deseja excluir: ");
    scanf("%d", &codigo);

    int pessoaEncontrada = 0;

    for (int i = 0; i < TAM; i++) {
        if (cadastro[i].cdg == codigo) {
            pessoaEncontrada = 1;
            cadastro[i].cdg = 0;
            strcpy(cadastro[i].nome, "");
            cadastro[i].gen = '\0';
            cadastro[i].idade = 0;
            cadastro[i].altura = 0;
            cadastro[i].peso = 0;
            break;
        }
    }

    if (pessoaEncontrada) {
        printf("Dados do usuário removidos com sucesso.\n");
    } else {
        printf("Pessoa não cadastrada.\n");
    }

    *continuar = 1; // continuar = 1 pra voltar pro menu
}

void opcao4(struct TPessoa cadastro[], int n, int *continuar) {
    int codigo;

    printf("Você escolheu ver os dados de um usuário.\n");
    printf("Digite o código do usuário que você deseja visualizar: ");
    scanf("%d", &codigo);

    int pessoaEncontrada = 0;

    for (int i = 0; i < n; i++) {
        if (codigo == cadastro[i].cdg) {
            pessoaEncontrada = 1;
            printf("Nome: %s\n", cadastro[i].nome);
            printf("Gênero: %c\n", cadastro[i].gen);
            printf("Idade: %d\n", cadastro[i].idade);
            printf("Altura: %.2f\n", cadastro[i].altura);
            printf("Peso: %.1f\n", cadastro[i].peso);
            break;
        }
    }

    if (!pessoaEncontrada) {
        printf("Código não localizado.\n");
    }
}

void opcao5(struct TPessoa cadastro[], int n, int *continuar) {
    printf("Você escolheu ver os dados de todos os usuários.\n");

    int pessoaEncontrada = 0;

    for (int i = 0; i < n; i++) {
        if (cadastro[i].cdg != 0) {
            pessoaEncontrada = 1;
            printf("Código: %d\n", cadastro[i].cdg);
            printf("Nome: %s\n", cadastro[i].nome);
            printf("Gênero: %c\n", cadastro[i].gen);
            printf("Idade: %d\n", cadastro[i].idade);
            printf("Altura: %.2f\n", cadastro[i].altura);
            printf("Peso: %.2f\n", cadastro[i].peso);
        }
    }

    if (!pessoaEncontrada) {
        printf("Nenhum usuário cadastrado.\n");
    }
}

int main() {
    struct TPessoa cadastro[TAM];
    int opcao;
    int n = 0;
    int continuar = 1;

    while (continuar) {
        printf("====================================================\n");
        printf("-----=MENU=-----\n");
        printf("O que deseja fazer?\n");
        printf("1. Cadastrar uma pessoa\n");
        printf("2. Alterar os dados de uma pessoa\n");
        printf("3. Excluir os dados de uma pessoa\n");
        printf("4. Ver os dados de uma pessoa\n");
        printf("5. Ver os dados de todos os cadastrados\n");
        printf("6. Sair\n");
        printf("(digite o número da opção)\n");
        printf("Opção: ");
        scanf("%d", &opcao);

        switch (opcao) {
            case 1:
                opcao1(cadastro, &n);
                break;

            case 2:
                opcao2(cadastro, n, &continuar);
                break;

            case 3:
                opcao3(cadastro, &continuar);
                break;

            case 4:
                opcao4(cadastro, n, &continuar);
                break;

            case 5:
                opcao5(cadastro, n, &continuar);
                break;

            case 6:
                continuar = 0;
                break;

            default:
                printf("Opção inválida. Tente novamente.\n");
                break;
        }
    }
    return 0;
}
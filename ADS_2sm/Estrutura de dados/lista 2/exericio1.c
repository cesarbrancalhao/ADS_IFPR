#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MaxItens 10
#define TamItem 20

typedef char tpItem[TamItem];

typedef struct {
    tpItem itens[MaxItens];
    int numItens;
} tpLista;

void criaLista(tpLista *l);
void insereLista(tpLista *l, const tpItem item);
void retiraLista(tpLista *l, const tpItem item);
void imprimelista(tpLista *l);
int contaLista(tpLista *l);

int main(void) {
    tpLista lista;
    int resposta = 0;
    tpItem item;

    criaLista(&lista);

    do {
        printf("\n----------Menu----------\n\n Que ação deseja realizar?\n1. Inserir elemento\n2. Retirar elemento\n");
        printf("3. Criar lista\n4. Contar elementos da lista\n5. Exibir o conteúdo da lista\n\n0. Sair\n\n");

        scanf("%d", &resposta);
        getchar();

        switch (resposta) {
            case 1:
                printf("\nInsira o elemento: ");
                fgets(item, TamItem, stdin);
                insereLista(&lista, item);
                break;

            case 2:
                printf("\nQual elemento deseja retirar? ");
                fgets(item, TamItem, stdin);
                retiraLista(&lista, item);
                break;

            case 3:
                criaLista(&lista);
                printf("\nNova lista criada!\n");
                break;

            case 4:
                printf("Total de itens na lista: %d\n", contaLista(&lista));
                break;

            case 5:
                imprimelista(&lista);
                break;

            case 0:
                exit(0);
                break;

            default:
                printf("\nErro, tente novamente. ");
                break;
        }
    } while (resposta != 0);

    return 0;
}

void criaLista(tpLista *l) {
    l->numItens = 0;

    for (int i = 0; i < MaxItens; i++) {
        l->itens[i][0] = '\0';
    }
}

void insereLista(tpLista *l, const tpItem item) {
    if (l->numItens < MaxItens) {
        strcpy(l->itens[l->numItens], item);
        l->numItens++;
        printf("Item %s inserido com sucesso.\n", item);
    } else {
        printf("Lista cheia, não pude inserir.\n");
    }
}

void retiraLista(tpLista *l, const tpItem item) {
    int found = 0;

    for (int i = 0; i < l->numItens; i++) {
        if (strcmp(l->itens[i], item) == 0) {
            found = 1;

            for (int j = i; j < l->numItens - 1; j++) {
                strcpy(l->itens[j], l->itens[j + 1]);
            }

            l->numItens--;
            l->itens[l->numItens][0] = '\0';
            printf("Item %s encontrado e removido.\n", item);
            break;
        }
    }

    if (!found) {
        printf("Item %s não encontrado.\n", item);
    }
}

void imprimelista(tpLista *l) {
    printf("\nItens da lista:\n");

    for (int i = 0; i < l->numItens; i++) {
        printf("%s\n", l->itens[i]);
    }
}

int contaLista(tpLista *l) {
    return l->numItens;
}

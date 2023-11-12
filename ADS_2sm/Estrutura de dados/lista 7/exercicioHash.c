#include <stdio.h>
#include <stdlib.h>

#define TAM_HASH 10

typedef struct node {
    int val;
    struct node* prox;
} NodeL;

typedef NodeL* Lista;


Lista criaLista();
Lista insereLista(Lista lista, int valor);
Lista buscaLista(Lista lista, int valor);
Lista retiraLista(Lista lista, int valor);
void imprimeLista(Lista lista);

int hash(int chave);
void criaHash(Lista *h);
void insereHash(Lista *h, int valor);
NodeL* buscaHash(Lista *h, int valor, Lista *enderecoHash);
void retiraHash(Lista *h, int valor);
void imprimeHash(Lista *h);
void menu();

int main(void) {
    Lista h[TAM_HASH];

    criaHash(h);

    menu(h);

    return 0;
}

int hash(int chave) {
    return (chave % TAM_HASH);
}

void criaHash(Lista *h) {
    int i;
    for (i = 0; i < TAM_HASH; i++) {
        h[i] = criaLista();
    }
}

void insereHash(Lista *h, int valor) {
    int i;
    i = hash(valor);
    h[i] = insereLista(h[i], valor);
}

NodeL* buscaHash(Lista *h, int valor, Lista *enderecoHash) {
    int i;
    i = hash(valor);
    *enderecoHash = &h[i];
    return buscaLista(h[i], valor);
}

void retiraHash(Lista *h, int valor) {
    int i;
    i = hash(valor);
    h[i] = retiraLista(h[i], valor);
}

void imprimeHash(Lista *h) {
    int i;
    printf("\nImprimindo as listas do hash h\n");
    for (i = 0; i < TAM_HASH; i++) {
        printf("h[%d]: ", i);
        imprimeLista(h[i]);
    }
    printf("\n");
}

void menu(Lista *h) {
    printf("------MENU------\n");

    int acao, num;

    do {
        printf("\nQue ação deseja realizar?\n");
        printf("1. Inserir elemento na tabela hash\n2. Retirar elemento da tabela hash");
        printf("\n3. Buscar elemento na tabela hash\n4. Imprimir a tabela hash\n");
        printf("0. Sair\n");

        scanf("%d", &acao);
        getchar();

        switch (acao) {
        case 1:
            printf("Que valor deseja inserir?\n");
            scanf("%d", &num);
            getchar();
            insereHash(h, num);
            printf("Valor inserido!\n");
            break;

        case 2:
            printf("Qual o número do item que deseja retirar?\n");
            scanf("%d", &num);
            getchar();
            retiraHash(h, num);
            break;

        case 3:
            printf("Insira o valor do item que deseja buscar.\n");
            scanf("%d", &num);
            getchar();
            Lista resultado;
            Lista enderecoHash;
            resultado = buscaHash(h, num, &enderecoHash);
            if (resultado != NULL) {
                printf("Item encontrado na tabela hash, posição: %p.\n", enderecoHash);
            } else {
                printf("Item não encontrado na tabela hash.\n");
            }
            break;

        case 4:
            imprimeHash(h);
            break;

        case 0:
            printf("Até logo\n");
            exit(0);

        default:
            printf("Opção inválida\n");
            break;
        }

    } while (acao != 0);
}

Lista insereLista(Lista lista, int valor) {
    NodeL *novo = (NodeL*)malloc(sizeof(NodeL));
    if (novo) {
        novo->val = valor;
        novo->prox = lista;
        return novo;
    } else {
        printf("Erro ao alocar memória para o novo elemento.\n");
        return lista;
    }
}

Lista buscaLista(Lista lista, int valor) {
    NodeL *aux = lista;
    while (aux != NULL) {
        if (aux->val == valor) {
            return aux;
        }
        aux = aux->prox;
    }
    return NULL;
}

Lista retiraLista(Lista lista, int valor) {
    NodeL *ant = NULL;
    NodeL *aux = lista;

    while (aux != NULL && aux->val != valor) {
        ant = aux;
        aux = aux->prox;
    }

    if (aux == NULL) {
        printf("Elemento não encontrado na lista.\n");
        return lista;
    }

    if (ant == NULL) {
        lista = aux->prox;
    } else {
        ant->prox = aux->prox;
    }

    free(aux);
    printf("Elemento removido da lista.\n");
    return lista;
}

void imprimeLista(Lista lista) {
    NodeL *aux = lista;
    while (aux != NULL) {
        printf("%d -> ", aux->val);
        aux = aux->prox;
    }
    printf("NULL\n");
}

Lista criaLista() {
    return NULL;
}
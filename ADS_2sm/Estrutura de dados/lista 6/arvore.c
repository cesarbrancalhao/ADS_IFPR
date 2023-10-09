#include <stdio.h>
#include <stdlib.h>

struct Node {
    int dado;
    struct Node* esquerda;
    struct Node* direita;
};

struct Node* criarNode(int dado);
void inserir(struct Node** raiz, int dado);
struct Node* encontrarMin(struct Node* node);
void deletarNode(struct Node** raiz, int dado);
struct Node* procurar(struct Node* raiz, int dado);
void preordem(struct Node* raiz);
void emordem(struct Node* raiz);
void posordem(struct Node* raiz);
void menu(struct Node* raiz, int escolha, int valor);

int main() {
    struct Node* raiz = NULL;

    int escolha, valor;

    menu(raiz, escolha, valor);

    return 0;
}

void menu(struct Node* raiz, int escolha, int valor) {
    do {
        printf("\nOpções:\n");
        printf("1 - Inserir um elemento na árvore\n");
        printf("2 - Retirar um elemento da árvore\n");
        printf("3 - Buscar um elemento na árvore\n");
        printf("4 - Imprimir todos os elementos em pré-ordem\n");
        printf("5 - Imprimir todos os elementos em ordem crescente\n");
        printf("6 - Imprimir todos os elementos em pós-ordem\n");
        printf("0 - Sair\n");

        printf("Escolha uma opção: ");
        //fpurge(stdin);
        scanf("%d", &escolha);
        fflush(stdin);

        switch (escolha) {
            case 0:
                exit(0);
            case 1:
                printf("Digite o valor a ser inserido: ");
                scanf("%d", &valor);
                fflush(stdin);
                inserir(&raiz, valor);
                break;
            case 2:
                printf("Digite o valor a ser retirado: ");
                scanf("%d", &valor);
                fflush(stdin);
                deletarNode(&raiz, valor);
                break;
            case 3:
                printf("Digite o valor a ser buscado: ");
                scanf("%d", &valor);
                fflush(stdin);
                if (procurar(raiz, valor) != NULL) {
                    printf("O elemento %d existe na árvore.\n", valor);
                } else {
                    printf("O elemento %d não existe na árvore.\n", valor);
                }
                break;
            case 4:
                printf("Elementos em pré-ordem: ");
                preordem(raiz);
                printf("\n");
                break;
            case 5:
                printf("Elementos em ordem crescente: ");
                emordem(raiz);
                printf("\n");
                break;
            case 6:
                printf("Elementos em pós-ordem: ");
                posordem(raiz);
                printf("\n");
                break;
            default:
                printf("Opção inválida. Tente novamente.\n");
        }
    } while (escolha != 0);
}

struct Node* criarNode(int dado){
    struct Node* novoNode = (struct Node*)malloc(sizeof(struct Node));
    if (novoNode == NULL) {
        printf("Erro de alocação, saindo do programa.");
        exit(1);
    }
    novoNode->dado = dado;
    novoNode->esquerda = NULL;
    novoNode->direita = NULL;
    return novoNode;
}

void inserir(struct Node** raiz, int dado) {
    if (*raiz == NULL){

        *raiz = criarNode(dado);
    } else {
        if (dado < (*raiz)->dado){
            inserir(&((*raiz)->esquerda), dado);
        } else {
          inserir(&((*raiz)->direita), dado);  
        }
    }
    printf("Elemento %d inserido na árvore.\n", dado);
}

struct Node* encontrarMin(struct Node* node) {
    while (node->esquerda != NULL) {
        node = node->esquerda;
    }
    return node;
}

void deletarNode(struct Node** raiz, int dado) {
    if (*raiz == NULL) {
        printf("Elemento não encontrado na árvore.\n");
        return;
    }
    if (dado < (*raiz)->dado) {
        deletarNode(&((*raiz)->esquerda), dado);
    } else if (dado > (*raiz)->dado) {
        deletarNode(&((*raiz)->direita), dado);
    } else {
        if((*raiz)->esquerda == NULL) {
            struct Node* temp = *raiz;
            *raiz = (*raiz)->direita;
            free(temp);
            printf("ELemento %d removido da árvore.\n", dado);
        }else if((*raiz)->direita == NULL) {
            struct Node* temp = *raiz;
            *raiz = (*raiz)->esquerda;
            free(temp);
            printf("ELemento %d removido da árvore.\n", dado);
        } else {
            struct Node* temp = encontrarMin((*raiz)->direita);
            (*raiz)->dado = temp->dado;
            deletarNode(&((*raiz)->direita), temp->dado);
        }
    }
}

struct Node* procurar(struct Node* raiz, int dado){
    if (raiz == NULL || raiz->dado == dado) {
        return raiz;
    }
    if (dado < raiz->dado) {
        return procurar(raiz->esquerda, dado);
    }
    return procurar(raiz->direita, dado);
}

void preordem(struct Node* raiz) {
    if (raiz != NULL) {
        printf("%d ", raiz->dado);
        preordem(raiz->esquerda);
        preordem(raiz->direita);
    }
}

void emordem(struct Node* raiz) {
    if (raiz != NULL) {
        emordem(raiz->esquerda);
        printf("%d ", raiz->dado);
        emordem(raiz->direita);
    }
}

void posordem(struct Node* raiz) {
    if (raiz != NULL) {
        posordem(raiz->esquerda);
        posordem(raiz->direita);
        printf("%d ", raiz->dado);
    }
}
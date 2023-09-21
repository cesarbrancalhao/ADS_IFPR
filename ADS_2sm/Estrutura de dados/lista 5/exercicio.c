#include <stdio.h>
#include <stdlib.h>

// estrutura do nó
struct Node {
    int data;
    struct Node* next;
};

// criar um novo nó da fila
struct Node* createNode(int data);

// inserir um elemento no final da fila
void inserir(struct Node** ini, struct Node** fim, int data);

// retirar um elemento do início da fila
void retirar(struct Node** ini, struct Node** fim);

// imprimir o conteúdo da fila
void imprimir(struct Node* ini);

int main() {
    struct Node* ini = NULL;
    struct Node* fim = NULL;

    int choice, elemento;
    do {
        printf("\nOpções:\n");
        printf("1. Inserir elemento na fila\n");
        printf("2. Retirar elemento da fila\n");
        printf("3. Imprimir conteúdo da fila\n");
        printf("\n0. Sair\n");
        printf("\nQue ação deseja realizar?\n");
        scanf("%d", &choice);
        printf("\n");

        switch (choice) {
            case 1:
                printf("Insira o número: ");
                scanf("%d", &elemento);
                inserir(&ini, &fim, elemento);
                break;
            case 2:
                retirar(&ini, &fim);
                break;
            case 3:
                imprimir(ini);
                break;
            case 0:
                printf("Saindo do programa.\n");
                break;
            default:
                printf("Opção inválida, tente novamente.\n");
        }
    } while (choice != 0);

    while (ini != NULL) {
        struct Node* temp = ini;
        ini = ini->next;
        free(temp);
    }

    return 0;
}

struct Node* createNode(int data) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    if (newNode == NULL) {
        printf("Erro de alocação, saindo do programa.\n");
        exit(1);
    }
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

void inserir(struct Node** ini, struct Node** fim, int data) {
    struct Node* newNode = createNode(data);
    if (*fim == NULL) {
        *ini = *fim = newNode;
    } else {
        (*fim)->next = newNode;
        *fim = newNode;
    }
    printf("Elemento %d adicionado à fila.\n", data);
}

void retirar(struct Node** ini, struct Node** fim) {
    if (*ini == NULL) {
        printf("Fila vazia, nada a retirar.\n");
        return;
    }
    struct Node* temp = *ini;
    *ini = (*ini)->next;
    if (*ini == NULL) {
        *fim = NULL;
    }
    int removedData = temp->data;
    free(temp);
    printf("Elemento %d retirado da fila.\n", removedData);
}

void imprimir(struct Node* ini) {
    printf("Conteúdo da fila:\n");
    while (ini != NULL) {
        printf("%d\n", ini->data);
        ini = ini->next;
    }
    printf("\n");
}

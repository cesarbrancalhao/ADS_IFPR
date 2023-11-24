#include <stdio.h>
#include <stdlib.h>

// declarando struct
struct Node {
    int data;
    struct Node* next;
};

// criar uma pilha
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

// inserir item na pilha
void inserir(struct Node** top, int data) {
    struct Node* newNode = createNode(data);
    newNode->next = *top;
    *top = newNode;
    printf("Elemento %d adicionado à pilha.\n", data);
}

// remover item da pilha
void remover(struct Node** top) {
    if (*top == NULL) {
        printf("Pilha vazia, nada a remover.\n");
        return;
    }
    struct Node* temp = *top;
    *top = (*top)->next;
    int poppedData = temp->data;
    free(temp);
    printf("Elemento %d removido da pilha.\n", poppedData);
}

// imprimir conteúdo da pilha
void imprimir(struct Node* top) {
    printf("Conteúdo da pilha:\n");
    while (top != NULL) {
        printf("%d\n", top->data);
        top = top->next;
    }
    printf("\n");
}

int main() {
    struct Node* top = NULL; // inicializar pilha

    int choice, elemento;
    do {
        printf("\nOpções:\n");
        printf("1 - Inserir elemento na pilha\n");
        printf("2 - Remover elemento da pilha\n");
        printf("3 - Imprimir conteúdo da pilha\n\n");
        printf("0 - Sair\n");
        printf("Que ação deseja realizar? ");
        scanf("%d", &choice);
        printf("\n");

        switch (choice) {
            case 1:
                printf("Insira o número: ");
                scanf("%d", &elemento);
                inserir(&top, elemento);
                break;
            case 2:
                remover(&top);
                break;
            case 3:
                imprimir(top);
                break;
            case 0:
                printf("Saindo do programa.\n");
                break;
            default:
                printf("Opção inválida, tente novamente.\n");
        }
    } while (choice != 0);

    // liberar os itens da pilha
    while (top != NULL) {
        struct Node* temp = top;
        top = top->next;
        free(temp);
    }

    return 0;
}
#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int val; 
    struct node* prox;
} NodeL;

void menu(NodeL **inicio);
void inserir(NodeL **inicio, int valor);
void imprimir(NodeL *inicio);
void contar(NodeL *inicio);
void retirar(NodeL **inicio, int item);
void buscar(NodeL *inicio, NodeL *endereco);

int main (void) {

    NodeL *inicioPtr = NULL;

    printf ("------MENU------\n");

    menu(&inicioPtr);

    return 0;
}

void menu (NodeL **inicio) {
    int acao, num;

    do
    {
        printf ("\nQue ação deseja realizar?\n");
        printf ("1. Inserir elemento na lista\n2. Retirar elemento da lista");
        printf ("\n3. Buscar elemento na lista\n4. Imprimir os elementos da lista\n");
        printf ("5. Contar o número de elementos da lista\n\n0. Sair\n");

        scanf ("%d", &acao); getchar();
        switch (acao)
        {
        case 1:
            printf ("Que valor deseja inserir?\n");
            scanf ("%d", &num); getchar();
            inserir(inicio, num);
            printf ("Valor inserido!\n");
            break;
        
        case 2:
            printf ("Qual o número do item que deseja retirar?\n");
            scanf ("%d", &num); getchar();
            retirar(inicio, num);
            break;

        case 3:
            printf ("Insira o endereço do item que deseja buscar.\n");
            NodeL *end;
            scanf ("%p", &end);
            buscar(*inicio, end);
            break;

        case 4:
            imprimir(*inicio);
            break;

        case 5:
            contar(*inicio);
            break;

        case 0:
            printf("Até logo");
            exit(0);

        default:
            printf("Opção inválida");
            break;
        }
        

    } while (acao != 0);
}

void inserir(NodeL **inicio, int valor) {
    NodeL *aux, *novo = malloc(sizeof(NodeL));

    if (novo) {
    novo->val = valor;
    novo->prox = NULL;

    if (*inicio == NULL) {
        *inicio = novo; 
        } else if (novo->val < (*inicio)->val) {
            novo->prox = *inicio;
            *inicio = novo;
        } else {
            aux = *inicio;
            while (aux->prox && novo->val > aux->prox->val) {
                aux = aux->prox;
            } novo->prox = aux->prox; aux->prox = novo;
            
        }
    } else {
        printf ("Erro.\n");
    }
}

void imprimir (NodeL *inicio) {
    printf("\nLista:\n");

    int i = 1;
    while (inicio) {
        printf("Item %d, valor %d, endereço %p.\n", i, inicio->val, inicio->prox);
        inicio = inicio->prox;
        i++;
    }
    printf ("\n");
}

void contar (NodeL *inicio) {
    int i = 0;
    while (inicio) {
        inicio = inicio->prox;
        i++;
    }
    printf("\nTotal de itens: %d\n", i);
}

void retirar(NodeL **inicio, int item) {
    NodeL *ant, *aux;
    int i = 1;

    if (item == 1) {
        ant = *inicio;
        *inicio = (*inicio)->prox;
        free(ant);
        printf("Item removido.\n");
        return;
    }

    ant = NULL;
    aux = *inicio;

    while(aux != NULL && i < item) {
        ant = aux;
        aux = ant->prox;
        i++;
    } 
    
    if (aux == NULL) {
        printf("Item inválido.\n");
        return;
    }

    ant->prox = aux->prox;
    free(aux);
    printf("Item removido.\n");
}

void buscar(NodeL *inicio, NodeL *end) {
    NodeL *aux = inicio;
    int i = 1, encontrado = 0;
    while (aux != NULL) {
        if (aux == end) {  //se o ponteiro for igual ao endereço
            printf("Item encontrado.\nItem %d, valor %d, endereço %p.\n", i, aux->val, aux->prox);
            encontrado = 1;
        }
        aux = aux->prox;
        i++;
    }
    if (encontrado == 0) {
        printf("Item não encontrado.\n");
    }
}

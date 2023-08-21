#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int val;
    struct node *next;
} node_t;

int main(void){

    node_t n1, n2, n3; // declara o primeiro item

    n1.val = 1; // diz o valor do primeiro item
    n1.next = &n2;  // diz o ponteiro do próximo item

    n2.val = 10;
    n2.next = NULL; // indica o fim da lista
    

    node_t *ponteiroDoN1 = &n1; // ponteiro do n1

    printf("Valor do node: %d.\n", ponteiroDoN1->val);
    printf("Próximo do ponteiro do node: %p.\n", ponteiroDoN1->next);

    printf("\nValor do próximo node: %d.\n", ponteiroDoN1->next->val);
    printf("Ponteiro do próximo node do N2: %p.\n", ponteiroDoN1->next->next); // n2.next = NULL; indica o fim da lista, logo o ponteiro = 0;

    return 0;
}

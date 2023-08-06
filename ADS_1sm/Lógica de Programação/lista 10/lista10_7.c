#include <stdio.h>
#include <string.h>

int main(void){
    char st1[100], st2[100];

    printf("Insira a string 1: ");
    fgets(st1, sizeof(st1), stdin);
    fflush(stdin);
    //__fpurge(stdin);

    printf("Insira a string 2: ");
    fgets(st2, sizeof(st2), stdin);
    fflush(stdin);
    //__fpurge(stdin);

    if (strcmp(st1, st2) == 0)
    {
        printf("As strings são iguais.");
    } else if (strcmp(st1, st2) != 0) { printf("As strings são diferentes."); }
    

    return 0;
}
#include <stdio.h>
#include <string.h>

int main(void){
    char st1[100], st2[100];

    printf("Insira a string: ");
    fgets(st1, sizeof(st1), stdin);
    //fflush(stdin);
    //__fpurge(stdin);


    for (int i = strlen(st1)-1; i >= 0; i--){
        printf("%c", st1[i]);
    }

    return 0;
}
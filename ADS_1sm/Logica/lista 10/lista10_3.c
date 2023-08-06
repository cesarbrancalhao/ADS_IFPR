#include <stdio.h>
#include <string.h>

int main(void){
    char st1[100];
    int numO = 0;

    printf("Insira a string: ");
    fgets(st1, sizeof(st1), stdin);
    //fflush(stdin);
    //__fpurge(stdin);

    for (int i = 0; i < strlen(st1); i++)
    {
        if (st1[i] == 'o')
        {
            numO += 1;
        }
    }
    
    printf("%d\n", numO);

    return 0;
}
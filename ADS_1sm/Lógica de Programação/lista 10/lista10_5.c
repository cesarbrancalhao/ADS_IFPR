#include <stdio.h>
#include <string.h>

int main(void){
    char st1[100];

    printf("Insira a string: ");
    fgets(st1, sizeof(st1), stdin);
    //fflush(stdin);
    //__fpurge(stdin);


    for (int i = 0; i < strlen(st1)-1; i++)
    {
        if (st1[i] >= 'a' && st1[i] <= 'z')
        {
            st1[i] = st1[i] - 32;
        }
        
    }
    
    printf("\n%s\n", st1);

    return 0;
}
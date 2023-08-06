#include <stdio.h>
#include <string.h>

int main(void){
    char st1[100], st2[100], st3[100];

    printf("String 1: ");
    scanf("%s",&st1);
    //fflush(stdin);
    __fpurge(stdin);

    printf("String 2: ");
    scanf("%s",&st2);
    //fflush(stdin);
    __fpurge(stdin);

    strcpy(st3, st1);
    strcat(st3, " ");
    strcat(st3, st2);

    printf("\nStrings:\n");
    printf("1. %s\n", st1);
    printf("2. %s\n", st2);
    printf("3. %s\n", st3);
    
    printf("\n");
    printf("\nTamanho das strings:\n");
    printf("1. %s\n", strlen(st1));
    printf("2. %s\n", strlen(st2));
    printf("3. %s\n", strlen(st3));

    return 0;
}
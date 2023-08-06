#include <stdio.h>
#include <string.h>

int main(void){
    char st1[] = "lua", st2[] = "cheia";

    strcat(st1, st2);
    printf("String 1: %s\n", st1);
    printf("string 2: %s\n", st2);

    return 0;
}

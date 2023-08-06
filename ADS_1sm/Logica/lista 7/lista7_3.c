#include <stdio.h>
#include <stdlib.h>

int main(void){

    int i;
    char iC;

    for (i = 32; i <= 126; i++) {
        iC = (char) i;
        printf("%d -> %c -> %x\n", i, iC, i);
    }

    system("pause");
    return 0;
}
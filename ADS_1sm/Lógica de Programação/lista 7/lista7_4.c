#include <stdio.h>
#include <stdlib.h>

int main(void){

    int i;
    float a = 0, b = 1, c = 0;

    for (i = 1; i <= 25; i++) {
        c = b/i;
        b += 2;
        a += c;
    }

    printf("A = %.1f\n", a);

    system("pause");
    return 0;
}
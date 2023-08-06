#include <stdio.h>

int main()
{    
    int myAge = 23;
    int broAge = 20;
    int momAge = 48;
    int dadAge = 50;

    int ageTotal;

    ageTotal = myAge + broAge + momAge + dadAge;

    printf("My age: %i.\nMy dad's age: %i.\nMy mom's age: %i.\n", myAge, dadAge, momAge);
    printf("Total age: %i.\n", ageTotal);

    return 0;
}

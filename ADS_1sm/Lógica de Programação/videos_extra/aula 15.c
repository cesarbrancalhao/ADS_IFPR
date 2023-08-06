#include <stdio.h>

int main()
{

    int age;

    printf("Enter the age: ");
    scanf("%d", &age);

    if(age <= 5){
        printf("Baby\n");
    } else if(age > 15 && age <= 10){
        printf("Child\n");
    } else if(age > 10 && age <= 18){
        printf("Adolescent\n");
    }else if(age > 18 && age <= 50){
        printf("Adult\n");
    }else{
        printf("Elderly\n");
    }

    return 0;
}
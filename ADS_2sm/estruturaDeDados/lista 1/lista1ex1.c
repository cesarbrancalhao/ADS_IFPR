#include <stdio.h>
#include <stdlib.h>

double sumAB(double a, double b);
double multiplyAB(double a, double b);
double diffAB(double a, double b);
double divideAB(double a, double b);
double actionAB(double a, double b, int action);
double loopMenu(double a, double b);

int main(void){
    double a, b;
    double resultado = 0;

    printf("Insira 2 números.\n");
    scanf("%lf%lf",&a,&b);
    
    loopMenu(a, b);
    
    return 0;
}

double sumAB(double a, double b){
    double j = (a+b);
    return j;
}
double multiplyAB(double a, double b){
    return (a*b);
}
double diffAB(double a, double b){
    double j = (a-b);
    return j;
}
double divideAB(double a, double b){
    double j = (a/b);
    return j;
}
double actionAB(double a, double b, int action){
    double j;
    switch (action){
    case 1:
        return sumAB(a, b);
        break;
    
    case 2:
        return multiplyAB(a, b);
        break;

    case 3:
        return diffAB(a, b);
        break;

    case 4:
        return divideAB(a, b);
        break;

    default:
        break;
    }
}
double loopMenu(double a, double b){
        int numAcao;
        double resultado;
    do{
        printf("\nQue ação deseja realizar?\n1. Somar\n2. Multiplicar\n3. Subtrair\n4. Dividir\n\n5. Reinserir números\n6. Sair\n\n");
        scanf("%d", &numAcao);

        switch(numAcao){
        case 1:
        case 2:
        case 3:
        case 4:
            resultado = actionAB(a,b,numAcao);
            printf("\nResultado: %.1f\n", resultado);
            break;

        case 5:
            printf("Insira 2 números.\n");
            scanf("%lf%lf",&a,&b); break;

        case 6:
            printf("Encerrando.\n");
            exit(0);

        default:
            printf("Ação inválida. Tente novamente.\n");
        }
    } while (numAcao < 10);
}

#include <stdio.h>

int main(void){
    float shift = 8, day = 24, sleep = 8, study = 2.6, freeTime, notfree;
    float percFree, percNot, dayperc = 0.24;

    notfree = shift + study + sleep;
    freeTime = day - notfree;
    percFree = freeTime / dayperc;
    percNot = notfree / dayperc;

    float fWeek, nfWeek, fMon, nfMon, fYear, nfYear, f5year, nf5year;

    fWeek = (freeTime/24) * 6;
    nfWeek = (notfree/24) * 6;
    fMon = (freeTime/24) * 24;
    nfMon = (notfree/24) * 24;
    fYear = fMon * 12;
    nfYear = nfMon * 12;

    f5year = fYear * 5;
    nf5year = nfYear * 5;

    printf("%.1f Free hours daily (%.1f%%).\n", freeTime, percFree);
    printf("%.1f Not free hours daily (%.1f%%).\n\n", notfree, percNot);

    printf("%.f Free hours weekly (%.1fd/u).\n", freeTime * 7, fWeek);
    printf("%.f Not free hours weekly (%.1fd/u).\n\n", notfree * 7, nfWeek);

    printf("%.f Free hours monthly (%.1fd/u).\n", freeTime * 30, fMon);
    printf("%.f Not free hours monthly (%.1fd/u).\n\n", notfree * 30, nfMon);

    printf("%.f Free hours yearly (%.1fd/u).\n", freeTime * 365, fYear);
    printf("%.f Not free hours yearly (%.1fd/u).\n\n", notfree * 365, nfYear);

    return 0;
}

/*rotina br medio
  00 - 08 soneca
  08 - 08:20 cafe
  08:20 - 09 locomoçao
  09 - 12 tramps
  12 - 13 moço
  13 - 17 tramps
  17 - 17:40 locomoçao
  17:40 - 18:30 cafe/banho/preparar coisas da casa e janta
  18:30 - 19 locomoção
  19 - 22 aula
  22 - 22:30 locomoçao
  22:30 - 24 jantar, estudar, fazer trabalhos/atividades/tempo livre/assistir algo/qualquer serotonina */

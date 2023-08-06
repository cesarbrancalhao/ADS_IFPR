#include <stdio.h>

int main(void){
    int shift = 8.56, day = 24, sleep = 8, study = 0, freeTime, notfree;
    float percFree, percNot;
    

    notfree = shift + study + sleep;
    freeTime = day - notfree;
    percFree = freeTime / (day/100);
    percNot = notfree / (day/100);

    float fWeek, nfWeek, fMon, nfMon, fYear, nfYear, f5year, nf5year;

    fWeek = (freeTime/24) * 7;
    nfWeek = (notfree/24) * 7;
    fMon = (freeTime/24) * 30;
    nfMon = (notfree/24) * 30;
    fYear = (freeTime/24) * 365;
    nfYear = (notfree/24) * 365;

    f5year = fYear * 5;
    nf5year = nfYear * 5;

    printf("%d Free hours daily (%.1f%%).\n", freeTime, percFree);
    printf("%d Not free hours daily (%.1f%%).\n", notfree, percNot);

    printf("%d Free hours weekly (%.1fd).\n", freeTime, fWeek);
    printf("%d Not free hours weekly (%.1fd).\n", notfree, nfWeek);

    printf("%d Free hours monthly (%.1fd).\n", freeTime, fMon);
    printf("%d Not free hours monthly (%.1fd).\n", notfree, nfMon);

    printf("%d Free hours yearly (%.1f).\n", freeTime, fYear);
    printf("%d Not free hours yearly (%.1f).\n", notfree, nfYear);

    return 0;
}
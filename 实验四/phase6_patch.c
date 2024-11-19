#include <stdio.h>
void myp(void);
void (*myprint)(void)=myp;
void myp(void){
    printf("U202215458");
    return;
}
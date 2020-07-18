#include <stdio.h>

int main(){
    double n, pi = 3.14159;
    
    scanf("%lf", &n);
    
    double a = pi * n * n;
    
    printf("A=%.4lf\n", a);
    
    return 0;
}

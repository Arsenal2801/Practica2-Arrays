/*
Diseñe un algoritmo que, dado un arreglo de 1000 enteros aleatorios y un menú:
a. Mostrar índices y valores mayores o iguales a un valor v1, en caso de no haber datos
mostrar “No existen datos mayores o iguales a ese valor”
b. Mostrar índices y valores menores o iguales a un valor v2, en caso de no haber datos
mostrar “No existen datos menores o iguales a ese valor”
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
    // Declaración de variables
    int arreglo[1000];
    int v1, v2, nMay, nMen, i;
    // Inicialización del generador de números aleatorios
    srand(time(NULL));
    // Generación de los números aleatorios
    for (i = 0; i < 1000; i++)
    {
        // Generación de los números aleatorios
        arreglo[i] = rand() % 1000;
        printf("%d ", arreglo[i]);
    }

    printf("\nIngrese un valor v1: ");
    scanf("%d", &v1);
    printf("\nIngrese un valor v2: ");
    scanf("%d", &v2);

    int c=0;
    // NUmeros mayores o iguales a v1
    for ( i = 0; i < 1000; i++)
    {
        // Numeros mayores o iguales a v1
        if (arreglo[i] >= v1)
        {
            nMay = arreglo[i];
            printf("El valor es : %d y tiene un inice %d \n", nMay, i);
            c++;
        }
    }
    if(c == 0){
        printf("no existen valores mayores a: %d en el arreglo\n", v1);
    }

    int d=0;
    // Numeros menores o iguales a v2
    for ( i = 0; i < 1000; i++)
    {
        if (arreglo[i] <= v2){
            nMen = arreglo[i];
            printf("El valor es : %d y tiene un inice %d \n", nMen, i);
            d++;
        }
    }
    if(d == 0){
        printf("No existen valores Menores a: %d en el arreglo\n", v2);
    }
    return 0;
    
}
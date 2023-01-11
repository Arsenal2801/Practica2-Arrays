/*
 ? Diseñe un algoritmo que, dado un arreglo de 100 números aleatorios, intercambie los elementos como se muestra a continuación:

 ***********************
 * 1 2 3 4 5 6 7 8 9 10 *
 *********************** 
 ***********************
 * 6 7 8 9 10 1 2 3 4 5 *
 ***********************
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 10

// Funcion main
int main(int argc, char const *argv[])
{
    // Variables
    int i, j, k, aux, arreglo[N];
    // Semilla
    srand(time(NULL));
    // Llenado del arreglo
    for (i = 0; i < N; i++)
    {
        // Llenado del arreglo
        arreglo[i] = rand() % 100;
    }
    // Impresion del arreglo
    printf("Array original\n");
    for (i = 0; i < N; i++)
    {
        printf("%d ", arreglo[i]);
    }
    printf("\n");
    printf("Aqui se intercambian los elementos*\n");
    // Intercambio de elementos

    for (i = 0; i < N / 2; i++)
    {
        // Intercambio de elementos
        aux = arreglo[i];
        arreglo[i] = arreglo[i + N / 2];
        arreglo[i + N / 2] = aux;
    }
    // Impresion del arreglo
    for (i = 0; i < N; i++)
    {
        printf("%d ", arreglo[i]);
    }
    // Fin del programa

    return 0;
}

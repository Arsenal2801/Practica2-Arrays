/*
    ? Diseñe un algoritmo que, dado un arreglo de 1000 números aleatorios, ordene los elementos del arreglo de dos formas posibles
    ? a) ascendente
    ? b) descendente.
*/

// * Instalacion de librerias
#include <stdio.h>
#include <stdlib.h>

// * Definicion de constantes
#define N 1000

// * Funcion principal
int main()
{
    // * Declaracion de variables y arreglos
    int arreglo[N], i, j, k, n, aux;
    // * Inicializacion de variables
    srand(time(NULL));
    for ( i = 0; i < N; i++)
    {
        arreglo[i] = rand() % 1000;
        printf("%d ", arreglo[i]);
    }
    printf("\n");
    printf("\n");
    printf("\n");
    
    // * Ordenamiento ascendente
    for ( i = 0; i < N; i++)
    {
        // * Ordenamiento
        for ( j = i + 1; j < N; j++)
        {
            // * Intercambio
            if (arreglo[i] > arreglo[j])
            {
                aux = arreglo[i];
                arreglo[i] = arreglo[j];
                arreglo[j] = aux;
            }
        }
    }
    // * Imprimir arreglo ordenado
    printf("Arreglo ordenado de forma ascendente: \n");
    for ( i = 0; i < N; i++)
    {
        printf("%d ", arreglo[i]);
    }
    printf("\n");
    printf("\n");
    printf("\n");

    // * Ordenamiento descendente
    for ( i = 0; i < N; i++)
    {
        // * Ordenamiento
        for ( j = i + 1; j < N; j++)
        {
            // * Intercambio
            if (arreglo[i] < arreglo[j])
            {
                aux = arreglo[i];
                arreglo[i] = arreglo[j];
                arreglo[j] = aux;
            }
        }
    }
    // * Imprimir arreglo ordenado
    printf("Arreglo ordenado de forma descendente: \n");
    for ( i = 0; i < N; i++)
    {
        printf("%d ", arreglo[i]);
    }
    printf("\n");
    return 0;
}

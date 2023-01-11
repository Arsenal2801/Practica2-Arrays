/*
Diseñe un algoritmo que, dado un arreglo de 1000 números enteros y un menú:
a. Muestre el valor y la posición de los números primos
b. Muestre el valor y la posición de los números perfectos
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    // Declaración de variables
    int arreglo[1000];
    int i, j, k, opt;

    // Inicialización del generador de números aleatorios
    srand(time(NULL));
    // Generación de los números aleatorios
    for (i = 0; i < 1000; i++)
    {
        // Generación de los números aleatorios
        arreglo[i] = rand() % 1000;
        printf("%d, ", arreglo[i]);
    }
    printf("\n");

    while (opt != 0)
    {
        printf("********************** MENU **********************\n");
        printf("1. Numeros primos\n");
        printf("2. Numeros perfectos\n");
        printf("0. Salir\n");
        printf("\nIngrese una opcion: ");
        scanf("%d", &opt);

        switch (opt)
        {
        case 1:
            // Numeros primos
            for (i = 0; i < 1000; i++)
            {
                int contador = 0;
                for (j = 1; j <= arreglo[i]; j++)
                {
                    if (arreglo[i] % j == 0)
                    {
                        contador++;
                    }
                }
                if (contador == 2)
                {
                    printf("El numero %d es primo y esta en la posicion %d\n", arreglo[i], i);
                }
            }
            break;
        case 2:
            // Numeros perfectos
            for (i = 0; i < 1000; i++)
            {
                int suma = 0;
                for (j = 1; j < arreglo[i]; j++)
                {
                    if (arreglo[i] % j == 0)
                    {
                        suma += j;
                    }
                }
                if (suma == arreglo[i])
                {
                    printf("El numero %d es perfecto y esta en la posicion %d\n", arreglo[i], i);
                }
            }
            break;

        default:
            printf("Opcion no valida\n");
            break;
        }
    }

    return 0;
}

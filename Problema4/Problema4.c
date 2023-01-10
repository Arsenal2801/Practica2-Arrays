/*
 *Diseñe un algoritmo que, dado un arreglo de 1000 números aleatorios, realice lo siguiente:
 *a. Encuentre y muestre la o las posiciones del número mayor y el menor.
 *b. Muestre true o false si existe un valor que sea igual al promedio del mayor y el menor
 *elemento dentro del arreglo. En caso de que sea true, muestre la o las posiciones de ese valor.
 *c. Calcule la media, la varianza y la desviación estándar de los elementos del arreglo
 */

// Path: Problema4\Problema4.c
// Iclusion de liberias
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

// *Definicion de constantes
#define N 1000

int main()
{

    // *Declaracion de variables y arreglos
    int i, j, k, n, mayor, menor, posmayor, posmenor, promedio, contador, pospromedio;
    float media, varianza, desviacion;
    int arreglo[N];

    // *Inicializacion de variables
    srand(time(NULL));
    n = N;
    mayor = 0;
    menor = 1000;
    contador = 0;

    // *Proceso de datos
    for (i = 0; i < n; i++)
    {
        // *Generacion de numeros aleatorios
        arreglo[i] = rand() % 1000;
        // *Imprimir arreglo
        printf("%d ", arreglo[i]);
        // *Encontrar el mayor y menor
        if (arreglo[i] > mayor)
        {
            mayor = arreglo[i];
            posmayor = i;
        }
        if (arreglo[i] < menor)
        {
            menor = arreglo[i];
            posmenor = i;
        }
    }
    // *Imprimir resultados
    printf("\nArreglo de %d numeros aleatorios entre 0 y 999 \n", n);
    printf("El numero mayor es %d y se encuentra en la posicion %d \n", mayor, posmayor);
    printf("El numero menor es %d y se encuentra en la posicion %d \n", menor, posmenor);

    // *Encontrar el promedio
    promedio = (mayor + menor) / 2;
    printf("El promedio es %d \n", promedio);
    // *Comprobacion de existencia del promedio
    for (j = 0; j < n; j++)
    {
        if (arreglo[j] == promedio)
        {
            contador++;
            pospromedio = j;
        }
    }
    // *Imprimir resultados
    if (contador > 0)
    {
        printf("El promedio existe y se encuentra en la posicion %d \n", pospromedio);
    }
    else
    {
        printf("El promedio no existe dentro del arreglo\n");
    }

    // *Calcular la varianza
    for (k = 0; k < n; k++)
    {
        varianza = varianza + pow((arreglo[k] - promedio), 2);
    }
    varianza = varianza / n;
    // *Calcular la desviacion estandar
    desviacion = sqrt(varianza);

    // *Imprimir resultados
    printf("La varianza es %f \n", varianza);
    printf("La desviacion estandar es %f \n", desviacion);

    return 0;
}
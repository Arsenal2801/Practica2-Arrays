// ? Diseñe un algoritmo que, dado un arreglo de 100 números aleatorios, intercambie los elementos como se muestra a continuación:
// ***********************
// * 1 2 3 4 5 6 7 8 9 10 *
// ***********************
// ***********************
// * 6 7 8 9 10 1 2 3 4 5 *
// ***********************
// Funcion main
Algoritmo nombre
// Variables
Dimension  arreglo[100]
// Semilla
// Llenado del arreglo
Para  i = 1 Hasta 100 Con Paso 1
// Llenado del arreglo
arreglo[i]=Azar(100)
FinPara
// Impresion del arreglo
Escribir 'Array original'
Para  i = 1 Hasta 100 Con Paso 1
Escribir arreglo[i], ' ' Sin Saltar
FinPara
Escribir ''
Escribir 'Aqui se intercambian los elementos*'
// Intercambio de elementos
Para  i = 1 Hasta 100/2 Con Paso 1
// Intercambio de elementos
aux = arreglo[i]
arreglo[i] = arreglo[i + 100 / 2]
arreglo[i + 100 / 2] = aux
FinPara
// Impresion del arreglo
Para  i = 1 Hasta 100 Con Paso 1
Escribir ' ', arreglo[i] Sin Saltar
FinPara
// Fin del programa
FinAlgoritmo

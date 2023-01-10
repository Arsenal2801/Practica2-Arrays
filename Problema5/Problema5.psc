//    ? Diseñe un algoritmo que, dado un arreglo de 1000 números aleatorios, ordene los elementos del arreglo de dos formas posibles
//    ? a) ascendente
//    ? b) descendente.
// * Instalacion de librerias
// * Definicion de constantes
// * Funcion principal
Algoritmo nombre
	// * Declaracion de variables y arreglos
	Dimension arreglo[1000]
	// * Inicializacion de variables
	Para   i = 1 Hasta 999 Con Paso 1
		arreglo[i]=Azar[1000]
		Escribir arreglo[i], " " Sin Saltar
	FinPara
	Escribir ''
	Escribir ''
	Escribir ''
	// * Ordenamiento ascendente
	Para   i = 1 Hasta 999 Con Paso 1
		// * Ordenamiento
		Para   j = i + 1 Hasta 999 Con Paso 1
			// * Intercambio
			Si  (arreglo[i] > arreglo[j])
				aux = arreglo[i]
				arreglo[i] = arreglo[j]
				arreglo[j] = aux
			FinSi
		FinPara
	FinPara
	// * Imprimir arreglo ordenado
	Escribir 'Arreglo ordenado de forma ascendente: '
	Para   i = 1 Hasta 999 Con Paso 1
		Escribir arreglo[i], " " Sin Saltar
	FinPara
	Escribir ''
	Escribir ''
	Escribir ''
	// * Ordenamiento descendente
	Para   i = 1 Hasta 999 Con Paso 1
		// * Ordenamiento
		Para   j = i + 1 Hasta 999 Con Paso 1
			// * Intercambio
			Si  (arreglo[i] < arreglo[j])
				aux = arreglo[i]
				arreglo[i] = arreglo[j]
				arreglo[j] = aux
			FinSi
		FinPara
	FinPara
	// * Imprimir arreglo ordenado
	Escribir 'Arreglo ordenado de forma descendente: '
	Para   i = 1 Hasta 999 Con Paso 1
		Escribir arreglo[i], " " Sin Saltar
	FinPara
	Escribir ''
FinAlgoritmo
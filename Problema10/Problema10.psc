//Dise�e un algoritmo que, dado un arreglo de 1000 n�meros enteros y un men�:
//a. Muestre el valor y la posici�n de los n�meros primos
//b. Muestre el valor y la posici�n de los n�meros perfectos
Algoritmo nombre
// Declaraci�n de variables
// Inicializaci�n del generador de n�meros aleatorios
	// Generaci�n de los n�meros aleatorios
	Dimension arreglo[1000]
Para  i = 1 Hasta 1000 Con Paso 1
// Generaci�n de los n�meros aleatorios
arreglo[i]=Azar(1000)
Escribir ', ', arreglo[i] Sin Saltar
FinPara
Escribir ''
Escribir '********************** MENU **********************'
Escribir '1. Numeros primos'
Escribir '2. Numeros perfectos'
Escribir '0. Salir'
Escribir 'Ingrese una opcion: '
Leer opt
Mientras  opt <> 0
Escribir '********************** MENU **********************'
Escribir '1. Numeros primos'
Escribir '2. Numeros perfectos'
Escribir '0. Salir'
Escribir 'Ingrese una opcion: '
Leer opt
Segun opt Hacer
	1:
		Para  i = 1 Hasta 999 Con Paso 1
			Para  j = 1 Hasta arreglo[i] Con Paso 1
				Si  (arreglo[i] % j == 0)
					contador=contador+1
				FinSi
			FinPara
			Si  (contador == 2)
				Escribir 'El numero  es primo ', arreglo[i],' y esta en la posicion ', i
			FinSi
		FinPara
	2:
		// Numeros perfectos
		Para  i = 1 Hasta 999 Con Paso 1
			Para  j = 1 Hasta arreglo[i] Con Paso 1
				Si  (arreglo[i] % j == 0)
					suma = suma + j
				FinSi
			FinPara
			Si  (suma == arreglo[i])
				Escribir 'El numero  es perfecto ', arreglo[i],' y esta en la posicion ', i
			FinSi
		FinPara
	De Otro Modo:
		Escribir 'Opcion no valida'
Fin Segun



FinMientras
FinAlgoritmo

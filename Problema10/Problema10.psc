//Diseñe un algoritmo que, dado un arreglo de 1000 números enteros y un menú:
//a. Muestre el valor y la posición de los números primos
//b. Muestre el valor y la posición de los números perfectos
Algoritmo nombre
// Declaración de variables
// Inicialización del generador de números aleatorios
	// Generación de los números aleatorios
	Dimension arreglo[1000]
Para  i = 1 Hasta 1000 Con Paso 1
// Generación de los números aleatorios
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

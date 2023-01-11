//Dise?e un algoritmo que, dado un arreglo de 1000 n?meros aleatorios, realice lo siguiente:
//a. Encuentre y muestre la o las posiciones del n?mero mayor y el menor.
//b. Muestre true o false si existe un valor que sea igual al promedio del mayor y el menor
//elemento dentro del arreglo. En caso de que sea true, muestre la o las posiciones de ese
//valor.
//c. Calcule la media, la varianza y la desviaci?n est?ndar de los elementos del arreglo

Algoritmo nombre
	//Declaracion de variables y arreglos
	//Inicializacion de variables
	Dimension arreglo[1000]
	n = 999
	mayor = 0
	menor = 1000
	contador = 0
	//Proceso de datos
	Para  i = 1 Hasta n Con Paso 1
		//Generacion de numeros aleatorios
		arreglo[i]=Azar(n)
		//Imprimir arreglo
		Escribir ' ', arreglo[i], " " Sin Saltar
		//Encontrar el mayor y menor
		Si  (arreglo[i] > mayor)
			mayor = arreglo[i]
			posmayor = i
		FinSi
		Si  (arreglo[i] < menor)
			menor = arreglo[i]
			posmenor = i
		FinSi
	FinPara
	//Imprimir resultados
	Escribir  " "
	Escribir 'Arreglo de  numeros aleatorios entre 0 y 999 '
	Escribir 'El numero mayor es ", mayor, " y se encuentra en la posicion ", posmayor
	Escribir 'El numero menor es ', menor,  ' y se encuentra en la posicion  ', posmenor
	//Encontrar el promedio
	promedio = (mayor + menor) / 2
	Escribir 'El promedio es  ', promedio
	// Comprobacion de existencia del promedio
	Para  j = 1 Hasta n Con Paso 1
		Si  (arreglo[j] == promedio)
			contador=contador+1
			pospromedio = j
		FinSi
	FinPara
	//Imprimir resultados
	Si  (contador > 0)
		Escribir 'El promedio existe y se encuentra en la posicion  ', pospromedio
	SiNo
		Escribir 'El promedio no existe dentro del arreglo'
	FinSi
	//Calcular media
	Para i=1 Hasta n Con Paso 1 Hacer
		media = media + arreglo[i]
	Fin Para
	media = media/n
	//Calcular la varianza
	Para  k = 1 Hasta n Con Paso 1
		varianza <- varianza + (arreglo[k] - media)^2
	FinPara
	varianza = varianza / n
	//Calcular la desviacion estandar
	desviacion = varianza^(0.5)
	//Imprimir resultados
	Escribir 'La media es: ', media
	Escribir 'La varianza es  ', varianza
	Escribir 'La desviacion estandar es  ', desviacion
FinAlgoritmo
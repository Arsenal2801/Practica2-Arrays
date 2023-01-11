//Diseñe un algoritmo que, dado un arreglo de 1000 enteros aleatorios y un menú:
//a. Mostrar índices y valores mayores o iguales a un valor v1, en caso de no haber datos
//mostrar "No existen datos mayores o iguales a ese valor"
//b. Mostrar índices y valores menores o iguales a un valor v2, en caso de no haber datos
//mostrar "No existen datos menores o iguales a ese valor"
Algoritmo nombre
// Declaración de variables
// Inicialización del generador de números aleatorios
	// Generación de los números aleatorios
	Dimension arreglo[1000]
Para  i = 1 Hasta 1000 Con Paso 1
// Generación de los números aleatorios
arreglo[i]=Azar(1000)
Escribir ' ', arreglo[i]
FinPara
Escribir 'Ingrese un valor v1: '
Leer v1
Escribir 'Ingrese un valor v2: '
Leer v2
// NUmeros mayores o iguales a v1
Para   i = 1 Hasta 1000 Con Paso 1
// Numeros mayores o iguales a v1
Si  (arreglo[i] >= v1)
nMay = arreglo[i]
Escribir 'El valor es : ',nMay, ' y tiene un inice  ', i
c=c+1
FinSi
FinPara
Si (c == 0)
Escribir 'no existen valores mayores a: ',v1,' en el arreglo'
FinSi
// Numeros menores o iguales a v2
Para   i = 1 Hasta 1000 Con Paso 1
Si  (arreglo[i] <= v2)
nMen = arreglo[i]
Escribir 'El valor es :',nMen, '  y tiene un inice  ', i
d=d+1
FinSi
FinPara
Si (d == 0)
Escribir 'No existen valores Menores a: ',v2,' en el arreglo'
FinSi
FinAlgoritmo

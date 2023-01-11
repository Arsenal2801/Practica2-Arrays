
Algoritmo nombre
	//Relleno del arreglo
	Dimension arreglo[1000]
Para i=1 Hasta 999 Con Paso 1
arreglo[i]=Azar(100)
FinPara
//Impresion arreglo original
Para i=1 Hasta 999 Con Paso 1
Escribir ', ', arreglo[i] Sin Saltar
FinPara
Escribir 'Ingrese el valor del primer indice: '
Leer indice1
Escribir 'Ingrese el valor del segundo indice: '
Leer indice2
size <- indice2-indice1
Escribir 'Valor de size: ', size
Dimension arreglo2[size]
Para i=1 Hasta size Con Paso 1
	nuevo = i+indice1
	aux = arreglo[nuevo]
	arreglo2[i] = aux
FinPara

Escribir 'Arreglo copiado del 1'
Para k=1 Hasta size Con Paso 1
Escribir 'indice  elemento: ', k,' ', arreglo2[k]
FinPara
//total de coincidencias en el arreglo
//printf("El numero %d se encontro %d veces en el arrelgo", target, coincidencias)
FinAlgoritmo

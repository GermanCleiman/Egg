Algoritmo Ejercicio_Integrador
//	El apocalipsis Zombie se ha desatado, pero aún hay esperanza. El Dr. Galard ha conseguido aislar el gen Z
//	analizando muestras genéticas codificadas. Una muestra se corresponde con una secuencia de caracteres
//compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA". Para poder detectar el gen
//		Z, se representa la muestra como una matriz cuadrada (MxM) y se busca en las dos diagonales principales que
//		todas las bases sean iguales. Siguiendo el ejemplo de la muestra anterior la matriz resultante es
//		Galard aclara que para que la muestra sea válida el orden de la matriz (el valor de M) debe ser 3x3, 4x4 o 37x37
//			(según la muestra). Por desgracia, de antemano no es posible saber el orden de la matriz y el mismo debe ser
//			inferido de la muestra ingresada.
//		Tu misión: hacer un programa que permita ingresar una muestra completa, detectar si es válida, y de ser así, que
//			imprima la matriz y muestre un mensaje que indique si se ha detectado o no el gen Z.
//				Hoy la humanidad depende de ti.
//			Reglas de Resolución:
//				a) Es obligatorio el uso de al menos una variable N-dimensional.
	//				b) La muestra la guardamos en utud parna variable en el código, no por consola
//				c) Subdivida el problema de tal forma de utilizar al menos dos subprogramas.
	Definir matriz, gen Como Caracter
	Definir largo Como Entero
	gen = "ABAABBCBD"

		largo = Longitud(gen)
		Segun largo Hacer
			9:
				largo =3
			16:
				largo =4
			1369:
				largo = 37
		Fin Segun
	
	
	Dimension matriz[ largo, largo]
	
	guardar(matriz, largo, gen)
	buscar(matriz, largo)
	mostrar1(matriz, largo, gen)
	
FinAlgoritmo

SubProceso guardar(matriz, largo, gen) 
	Definir i, j, k Como Entero
	k = 0
	Para i=0 Hasta largo-1 Con Paso 1 Hacer
		Para j=0 Hasta largo-1 Con Paso 1 Hacer
			matriz(i, j) = Subcadena(gen, k, k )
			k = k + 1
		Fin Para
		Escribir " "
	Fin Para
FinSubProceso

SubProceso buscar(matriz, largo)
	Definir i, j, d1, d2, salto Como Entero
	d1 = 0; d2=0; salto = 0
	Para i=0 Hasta largo-1 Con Paso 1 Hacer
		para J=salto Hasta  largo-1 Hacer
			si matriz(i, j) = matriz(0, 0) Entonces
				d1 = d1 + 1
			FinSi
			salto = salto + 1
			j=j+ largo
		FinPara
	Fin Para
	
	salto = largo-1
	Para i=0 Hasta largo-1 Hacer
		para J=salto Hasta  largo-1 Hacer
			
			si matriz(i, j) = matriz(0, largo-1) Entonces
				
				d2 = d2 + 1
			FinSi
			salto = salto - 1
			j = j + largo-1
		FinPara
	FinPara
	Escribir d1 d2
	si d1 = d2 y d2 = largo Entonces
		Escribir "Tiene el gen Z"
	SiNo
		Escribir "No tiene el gen Z"
	FinSi
FinSubProceso

SubProceso mostrar1(matriz, largo, gen)
	Definir i, j Como Entero
	Para i=0 Hasta largo-1 Con Paso 1 Hacer
		Para j=0 Hasta largo-1 Con Paso 1 Hacer
			Escribir matriz(i, j) Sin Saltar
		Fin Para
		Escribir " "
	Fin Para
	
FinSubProceso
	
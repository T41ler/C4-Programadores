Algoritmo Promedio
	Definir nota1 Como entero
	Definir nota2 Como entero
	Definir nota3 Como entero
	Definir promedios Como Real

	Escribir "Introduce el valor de nota1"
	Leer nota1
	Escribir "Introduce el valor de nota2"
	Leer nota2
	Escribir "Introduce el valor de nota3"
	Leer nota3
	
	promedios<-(nota1 + nota2 + nota3)/3
	
	Si promedios >= 70 Entonces
		Escribir "Aproboda y su promedio fue de " , promedios
	SiNo
		Escribir "Reprobado y su promedio fue de " , promedios
	Fin Si
FinAlgoritmo

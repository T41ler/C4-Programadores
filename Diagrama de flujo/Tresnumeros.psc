Algoritmo Tresnumeros
		Definir num1 Como Entero
		Definir num2 Como Entero
		definir num3 Como Entero
		
		Escribir "introduce el numero"
		Leer num1
		Escribir "introduce el numero"
		Leer num2
		Escribir "introduce el numero"
		Leer num3
		
		Si num1 > num2 Y num1 > num3 Entonces
			Escribir "El mayor es: ", num1
		Sino
			Si num2 > num1 Y num2 > num3 Entonces
				Escribir "El mayor es: ", num2
			Sino
				Escribir "El mayor es: ", num3
			FinSi
		FinSi
FinAlgoritmo

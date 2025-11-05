	Algoritmo VerificarVocalOConsonante
		
		Definir Letra Como Caracter;
		
		Escribir "Ingrese una letra:";
		Leer Letra;
		
		Si (Letra = "a" O Letra = "A" O Letra = "e" O Letra = "E" O Letra = "i" O Letra = "I" O Letra = "o" O Letra = "O" O Letra = "u" O Letra = "U") Entonces
			
			Escribir "La letra ", Letra, " es una VOCAL.";
			
		SiNo
			
			Escribir "La letra ", Letra, " es una CONSONANTE.";
			
		FinSi
		
FinAlgoritmo

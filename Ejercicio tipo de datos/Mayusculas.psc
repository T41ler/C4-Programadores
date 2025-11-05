Algoritmo MostrarEnMayusculas
   
    Definir FraseOriginal Como Caracter;
    Definir FraseMayusculas Como Caracter;

    Escribir "Ingrese una frase (puede incluir minúsculas):";
    Leer FraseOriginal;
    
    FraseMayusculas <- Mayusculas(FraseOriginal); 
    
    Escribir "La frase original fue: ", FraseOriginal;
    Escribir "La frase en MAYÚSCULAS es: ", FraseMayusculas;
    
FinAlgoritmo
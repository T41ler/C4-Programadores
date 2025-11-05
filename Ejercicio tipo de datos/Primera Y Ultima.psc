Algoritmo PrimeraYUltimaLetra
   
    Definir Palabra Como Caracter;
    Definir PrimeraLetra, UltimaLetra Como Caracter;
   
    Definir LargoCadena, Indice Como Entero;
    
    Escribir "Ingrese una palabra:";
    Leer Palabra;
    
    LargoCadena <- 0;
    Indice <- 1;
    
    Mientras Subcadena(Palabra, Indice, Indice) <> "" Hacer 
        LargoCadena <- LargoCadena + 1;
        Indice <- Indice + 1;
    FinMientras
    
    PrimeraLetra <- Subcadena(Palabra, 1, 1);
    
    UltimaLetra <- Subcadena(Palabra, LargoCadena, LargoCadena); 
    
    Escribir "La palabra ingresada es: ", Palabra;
    Escribir "La primera letra es: ", PrimeraLetra;
    Escribir "La ultima letra es: ", UltimaLetra;
    
FinAlgoritmo
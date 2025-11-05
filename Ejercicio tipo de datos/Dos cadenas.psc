Algoritmo Doscadenas
   
    Definir Palabra1, Palabra2 Como Caracter;
    Definir Longitud1, Longitud2 Como Entero;
    Definir Indice Como Entero;
    
    Escribir "Ingrese la primera palabra (Cadena 1):";
    Leer Palabra1;
    
    Escribir "Ingrese la segunda palabra (Cadena 2):";
    Leer Palabra2;
    
    Longitud1 <- 0;
    Indice <- 1;
    
    Mientras Subcadena(Palabra1, Indice, Indice) <> "" Hacer 
        Longitud1 <- Longitud1 + 1;
        Indice <- Indice + 1;
    FinMientras

    Longitud2 <- 0;
    Indice <- 1; 
    
    Mientras Subcadena(Palabra2, Indice, Indice) <> "" Hacer 
        Longitud2 <- Longitud2 + 1;
        Indice <- Indice + 1;
    FinMientras
    
    Escribir "--- Comparación de Longitudes ---";
    Escribir "Cadena 1 (", Palabra1, ") tiene ", Longitud1, " caracteres.";
    Escribir "Cadena 2 (", Palabra2, ") tiene ", Longitud2, " caracteres.";
    
    Si Longitud1 > Longitud2 Entonces
        Escribir "La cadena MÁS LARGA es la Cadena 1.";
    SiNo
        Si Longitud2 > Longitud1 Entonces
            Escribir "La cadena MÁS LARGA es la Cadena 2.";
        SiNo
           
            Escribir "Ambas cadenas tienen la misma longitud.";
        FinSi
    FinSi
    
FinAlgoritmo

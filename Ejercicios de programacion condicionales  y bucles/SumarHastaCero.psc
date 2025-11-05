Algoritmo SumarHastaCero
    
    Definir Numero, SumaTotal Como Real;
    
    SumaTotal <- 0;
    
    Escribir "Ingrese un número (ingrese 0 para terminar y ver el resultado):";
    Leer Numero;
    
    Mientras Numero <> 0 Hacer
        
        SumaTotal <- SumaTotal + Numero;

        Escribir "Suma actual: ", SumaTotal;
        Escribir "Ingrese otro número (o 0 para finalizar):";
        Leer Numero;
        
    FinMientras
    
    Escribir "--- PROCESO FINALIZADO ---";
    Escribir "La suma total de los números ingresados es: ", SumaTotal;
    
FinAlgoritmo
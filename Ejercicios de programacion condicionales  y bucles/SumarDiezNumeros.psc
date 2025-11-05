Algoritmo SumarDiezNumeros

    Definir SumaTotal, NumeroIngresado Como Real;
    Definir Contador Como Entero;
    
    SumaTotal <- 0;
    
    Escribir "--- Cálculo de la suma de 10 números ---";
    
    Para Contador <- 1 Hasta 10 Con Paso 1 Hacer
        
        Escribir "Ingrese el número ", Contador, " de 10:";
        Leer NumeroIngresado;
        
        SumaTotal <- SumaTotal + NumeroIngresado;
        
    FinPara
    
    Escribir "La suma total de los 10 números ingresados es: ", SumaTotal;
    
FinAlgoritmo

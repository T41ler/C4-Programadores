Algoritmo SumaYPromedio
 
    Definir NotaIngresada, SumaTotal, Promedio Como Real;
    Definir Contador Como Entero;
    
    SumaTotal <- 0;
    
    Escribir "--- Cálculo de la suma y promedio de 5 notas ---";
    
    Para Contador <- 1 Hasta 5 Con Paso 1 Hacer
        
        Escribir "Ingrese la nota número ", Contador, " de 5:";
        Leer NotaIngresada;
        
        SumaTotal <- SumaTotal + NotaIngresada;
        
    FinPara
    
    Promedio <- SumaTotal / 5;
    
    Escribir "La suma total de las 5 notas es: ", SumaTotal;
    Escribir "El promedio final es: ", Promedio;
    
FinAlgoritmo

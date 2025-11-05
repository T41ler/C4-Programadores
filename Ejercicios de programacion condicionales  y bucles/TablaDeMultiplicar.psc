Algoritmo TablaDeMultiplicar

    Definir Numero, i, Resultado Como Entero;
    
    Escribir "Ingrese el número del cual desea ver la tabla de multiplicar:";
    Leer Numero;
    
    Escribir "--- Tabla del ", Numero, " (del 1 al 10) ---";
    
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        
        Resultado <- Numero * i;
        
        Escribir Numero, " x ", i, " = ", Resultado;
        
    FinPara
    
FinAlgoritmo
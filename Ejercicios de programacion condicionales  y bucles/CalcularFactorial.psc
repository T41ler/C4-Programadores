Algoritmo CalcularFactorial
   
    Definir Numero Como Entero;
    Definir Factorial Como Real
    Definir i Como Entero;
    
    Escribir "Ingrese un número entero positivo para calcular su factorial (n!):";
    Leer Numero;
    
    Si Numero < 0 Entonces
        Escribir "El factorial solo está definido para números enteros positivos o cero.";
    SiNo
       
        Factorial <- 1;
        
        Si Numero = 0 Entonces
            Escribir "El factorial de 0 es: 1";
        SiNo
           
            Para i <- 1 Hasta Numero Con Paso 1 Hacer
                
                Factorial <- Factorial * i;
                
            FinPara
            
            Escribir "El factorial de ", Numero, " (", Numero, "!) es: ", Factorial;
        FinSi
    FinSi
    
FinAlgoritmo
Algoritmo CalcularValorAbsoluto
    
    Definir Numero Como Real;
    Definir ValorAbsoluto Como Real;
    
    Escribir "Ingrese un número real (positivo o negativo):";
    Leer Numero;
    
    Si Numero < 0 Entonces
       
        ValorAbsoluto <- Numero * (-1);
    SiNo
        
        ValorAbsoluto <- Numero;
    FinSi
    
    Escribir "El número ingresado es: ", Numero;
    Escribir "Su valor absoluto es: ", ValorAbsoluto;
    
FinAlgoritmo
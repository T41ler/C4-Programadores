Algoritmo PositivoNegativo
   
    Definir Num Como Real;
    
   
    Escribir "Ingrese un número (positivo, negativo o cero):";
    Leer Num;
    
   
    Si Num > 0 Entonces
        
        Escribir "El número ingresado es POSITIVO (Verdadero).";
        
    SiNo
      
        Si Num = 0 Entonces
            Escribir "El número ingresado es CERO (ni positivo ni negativo).";
        SiNo
           
            Escribir "El número ingresado es NEGATIVO (Falso).";
        FinSi
        
    FinSi
    
FinAlgoritmo
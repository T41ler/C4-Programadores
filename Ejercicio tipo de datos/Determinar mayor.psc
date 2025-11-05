Algoritmo DeterminarMayor
    
    Definir Num1 Como Real
	Definir Num2 Como Real;
	
    
    Escribir "Ingrese el primer número:";
    Leer Num1;
	
    Escribir "Ingrese el segundo número:";
    Leer Num2;
	
  
    Si Num1 > Num2 Entonces
        Escribir "El número mayor es: ", Num1;
    SiNo
        Si Num2 > Num1 Entonces
            Escribir "El número mayor es: ", Num2;
        SiNo
            
            Escribir "Ambos números son iguales: ", Num1;
        FinSi
    FinSi
	
FinAlgoritmo
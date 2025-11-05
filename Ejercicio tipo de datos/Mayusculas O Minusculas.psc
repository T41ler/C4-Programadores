Algoritmo MayusculaOMinuscula
  
    Definir CaracterIngresado Como Caracter;
    
    Escribir "Ingrese un solo carácter (letra):";
    Leer CaracterIngresado;
    
    Si (CaracterIngresado >= "a" Y CaracterIngresado <= "z") Entonces
		
        Escribir "El carácter ", CaracterIngresado, " es MINÚSCULA.";
        
    SiNo
        Si (CaracterIngresado >= "A" Y CaracterIngresado <= "Z") Entonces
            
            Escribir "El carácter ", CaracterIngresado, " es MAYÚSCULA.";
            
        SiNo
            Escribir "El carácter ", CaracterIngresado, " no es una letra del alfabeto o es un símbolo especial.";
        FinSi
        
    FinSi
	
FinAlgoritmo

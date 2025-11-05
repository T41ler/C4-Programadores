Algoritmo VerificarSiEsNumero
   
    Definir CaracterIngresado Como Caracter;
    
    Escribir "Ingrese un solo carácter:";
    Leer CaracterIngresado;
    
    Si (CaracterIngresado >= "0" Y CaracterIngresado <= "9") Entonces
        
        Escribir "El carácter ", CaracterIngresado, " es un NÚMERO (dígito).";
        
    SiNo
        
        Escribir "El carácter ", CaracterIngresado, " NO es un número (dígito).";
        
    FinSi
    
FinAlgoritmo
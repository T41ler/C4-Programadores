Algoritmo AdivinaElNumero
  
    Definir Secreto Como Entero;
    Definir Intento Como Entero;

    Secreto <- 10;
    
    Escribir "--- ¡Adivina el Número Secreto! ---";
    Escribir "El número está entre 1 y 20.";
    
    Repetir
        
        Escribir "Ingresa tu intento:";
        Leer Intento;
        
        Si Intento <> Secreto Entonces
            Si Intento > Secreto Entonces
                Escribir "¡Incorrecto! El número secreto es MENOR.";
            SiNo
                Escribir "¡Incorrecto! El número secreto es MAYOR.";
            FinSi
        FinSi
        
    Hasta Que Intento = Secreto
    
    Escribir "¡Felicidades! ¡Adivinaste el número secreto (", Secreto, ")!";
    
FinAlgoritmo

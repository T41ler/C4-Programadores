Algoritmo ConteoRegresivo
  
    Definir Inicio Como Entero;
  
    Escribir "Ingrese el número entero desde el que desea iniciar la cuenta regresiva (debe ser mayor o igual a 1):";
    Leer Inicio;
    
    Si Inicio < 1 Entonces
        Escribir "El número ingresado es inválido. Por favor, inicie desde 1 o un número mayor.";
    SiNo
      
        Escribir "--- INICIANDO CONTEO REGRESIVO ---";
        Mientras Inicio >= 1 Hacer
            
            Escribir Inicio;
            
            Inicio <- Inicio - 1;
            
        FinMientras
        
        Escribir "¡CONTEO REGRESIVO FINALIZADO!";
    FinSi
    
FinAlgoritmo

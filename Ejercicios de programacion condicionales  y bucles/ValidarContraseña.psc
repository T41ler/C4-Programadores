Algoritmo ValidarContrasena
  
    Definir Contrasena Como Caracter;
    
    Contrasena <- "";
    
    Escribir "--- VALIDACIÓN DE CONTRASEÑA ---";
    Escribir "La contraseña correcta es: 1234";
    
    Mientras Contrasena <> "1234" Hacer
        
        Escribir "Ingrese la contraseña:";
        Leer Contrasena;
        
        Si Contrasena <> "1234" Entonces
            Escribir "Contraseña incorrecta. Intente de nuevo.";
        FinSi
        
    FinMientras
    
    Escribir "¡Contraseña correcta! Acceso concedido.";
    
FinAlgoritmo

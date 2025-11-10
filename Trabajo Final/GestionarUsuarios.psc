Algoritmo GestionarUsuarios
   
    Dimensionar Usuarios[10];
    Dimensionar Contrasenas[10];
    
    Definir MAX_USUARIOS Como Entero;
    Definir NumUsuariosRegistrados Como Entero;
    
    Definir NuevoUsuario, NuevaContrasena Como Caracter;
    Definir FuerzaValida Como Logico;
    
    MAX_USUARIOS <- 10;
    NumUsuariosRegistrados <- 0;
    
    Definir LargoCadena, i Como Entero;
    Definir TieneLongitud, TieneNumero Como Logico;
    Definir CaracterActual Como Caracter;
    
    Escribir "--- SISTEMA DE REGISTRO DE USUARIOS ---";
    
    Si NumUsuariosRegistrados < MAX_USUARIOS Entonces
        Escribir "***************************************";
        Escribir "Paso 1: Ingreso de datos";
        Escribir "Ingrese el nuevo nombre de usuario:";
        Leer NuevoUsuario;
        
        Repetir
            Escribir "Ingrese la nueva contraseña (Mín. 8 caracteres, debe incluir números):";
            Leer NuevaContrasena;
            
            LargoCadena <- 0;
            i <- 1;
            Mientras Subcadena(NuevaContrasena, i, i) <> "" Hacer 
                LargoCadena <- LargoCadena + 1;
                i <- i + 1;
            FinMientras
            
            Si LargoCadena >= 8 Entonces
                TieneLongitud <- Verdadero;
            SiNo
                TieneLongitud <- Falso;
            FinSi
            
            TieneNumero <- Falso;
            Para i <- 1 Hasta LargoCadena Con Paso 1 Hacer
                CaracterActual <- Subcadena(NuevaContrasena, i, i);
                Si (CaracterActual >= "0" Y CaracterActual <= "9") Entonces
                    TieneNumero <- Verdadero;
                FinSi
            FinPara
            
            Si TieneLongitud Y TieneNumero Entonces
                FuerzaValida <- Verdadero;
            SiNo
                FuerzaValida <- Falso;
            FinSi
            
            Si No FuerzaValida Entonces
                Escribir "ERROR: La contraseña NO cumple con los requisitos mínimos de fuerza.";
                
                Escribir "***************************************";
                Escribir "?? ALERTA DE SEGURIDAD ??";
                
                Si LargoCadena < 8 Entonces
                    Escribir "* Contraseña demasiado corta. Debe tener al menos 8 caracteres. (Longitud actual: ", LargoCadena, ")";
                FinSi
                
                Si No TieneNumero Entonces
                    Escribir "* Se recomienda incluir al menos un número (0-9).";
                FinSi
                Escribir "***************************************";
            FinSi
            
        Hasta Que FuerzaValida
        
        NumUsuariosRegistrados <- NumUsuariosRegistrados + 1;
        Usuarios[NumUsuariosRegistrados] <- NuevoUsuario;
        Contrasenas[NumUsuariosRegistrados] <- NuevaContrasena;
        
        Escribir "¡Registro exitoso!";
        Escribir "Usuario: ", Usuarios[NumUsuariosRegistrados];
        Escribir "Contraseña: ", Contrasenas[NumUsuariosRegistrados];
        
    SiNo
        Escribir "Error: El límite de ", MAX_USUARIOS, " usuarios ha sido alcanzado.";
    FinSi
    
FinAlgoritmo
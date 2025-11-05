Algoritmo MostrarCodigoASCII
   
    Definir CaracterIngresado Como Caracter;
    Definir CodigoASCII Como Entero;
    
   
    Escribir "Ingrese una letra MAYÚSCULA (A-Z) para la prueba:";
    Leer CaracterIngresado;
    
  
    
    Si CaracterIngresado = "A" Entonces
        CodigoASCII <- 65;
    SiNo
        Si CaracterIngresado = "B" Entonces
            CodigoASCII <- 66;
        SiNo
            Si CaracterIngresado = "C" Entonces
                CodigoASCII <- 67;
            SiNo
           
                CodigoASCII <- 0; 
            FinSi
        FinSi
    FinSi
    
   
    Escribir "El carácter ingresado es: ", CaracterIngresado;
    
    Si CodigoASCII <> 0 Entonces
        Escribir "Su código ASCII (valor numérico) es: ", CodigoASCII;
    SiNo
        Escribir "No se pudo determinar el código ASCII para el carácter ingresado.";
    FinSi
    
FinAlgoritmo
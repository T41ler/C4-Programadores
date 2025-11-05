Algoritmo AprobadooReprebado

    Definir Nota Como Entero;
    
    Escribir "Ingrese la nota (valor entre 0 y 100):";
    Leer Nota;
    
    Si Nota >= 90 Entonces
      
        Escribir "Nota: ", Nota, ". Resultado: Aprobado con A";
        
    SiNo
       
        Si Nota >= 70 Entonces
          
            Escribir "Nota: ", Nota, ". Resultado: Aprobado";
        SiNo
          
            Escribir "Nota: ", Nota, ". Resultado: Reprobado";
        FinSi
        
    FinSi
    
FinAlgoritmo
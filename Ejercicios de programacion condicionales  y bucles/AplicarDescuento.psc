Algoritmo AplicarDescuento
    
    Definir MontoCompra, Descuento, MontoFinal Como Real;
    Definir TasaDescuento Como Real;
    
    TasaDescuento <- 0.10;
    
    Escribir "Ingrese el monto total de la compra:";
    Leer MontoCompra;
    
    Si MontoCompra > 500 Entonces
        
      
        Descuento <- MontoCompra * TasaDescuento;
        MontoFinal <- MontoCompra - Descuento;
        
        Escribir "¡Felicidades! Se aplicó un 10% de descuento.";
        Escribir "Monto de descuento: ", Descuento;
        Escribir "El monto final a pagar es: ", MontoFinal;
        
    SiNo
        
        MontoFinal <- MontoCompra;
        Descuento <- 0;
        
        Escribir "El monto de la compra es menor o igual a 500.";
        Escribir "No aplica descuento. El monto final a pagar es: ", MontoFinal;
        
    FinSi
    
FinAlgoritmo
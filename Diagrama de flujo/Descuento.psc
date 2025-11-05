Algoritmo Descuento
	Definir monto Como Real
	
	Escribir "Introduce el monto de la factura"
	Leer monto
	
	Si monto > 1000 Entonces
		escribir "total a pagar" ,monto - (monto * 0.10)
	SiNo
		escribir "total a pagar" ,monto
	Fin Si
	
FinAlgoritmo

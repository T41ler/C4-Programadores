class Rectangulo:
    def __init__(self, base, altura):
        """
        Constructor que recibe las medidas del rectángulo.
        """
        self.base = base
        self.altura = altura

    def calcular_area(self):
        """
        Calcula y retorna el área del rectángulo.
        """
        area = self.base * self.altura
        return area

# --- Ejemplo de uso ---

# 1. Creamos el objeto con una base de 10 y altura de 5
mi_rectangulo = Rectangulo(10, 5)

# 2. Calculamos el área llamando a la función
resultado_area = mi_rectangulo.calcular_area()

# 3. Mostramos el resultado
print(f"La base es: {mi_rectangulo.base}")
print(f"La altura es: {mi_rectangulo.altura}")
print(f"El área calculada es: {resultado_area}")
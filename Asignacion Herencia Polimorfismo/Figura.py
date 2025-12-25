import math

# Clase Base (Padre)
class Figura:
    def area(self):
        """Método base que será definido en las clases hijas."""
        pass

# Clase Hija: Cuadrado
class Cuadrado(Figura):
    def __init__(self, lado):
        self.lado = lado

    def area(self):
        # El área de un cuadrado es lado * lado o lado al cuadrado
        return self.lado ** 2

# Clase Hija: Círculo
class Circulo(Figura):
    def __init__(self, radio):
        self.radio = radio

    def area(self):
        # El área del círculo es pi * radio al cuadrado
        return math.pi * (self.radio ** 2)

# --- Ejemplo de uso ---

# Instanciamos los objetos
mi_cuadrado = Cuadrado(4)
mi_circulo = Circulo(3)

# Mostramos resultados con formato de 2 decimales
print(f"Área del cuadrado (lado {mi_cuadrado.lado}): {mi_cuadrado.area()}")
print(f"Área del círculo (radio {mi_circulo.radio}): {mi_circulo.area():.2f}")
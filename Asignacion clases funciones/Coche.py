class Coche:
    def __init__(self, marca, velocidad=0):
        """
        Constructor que inicializa la marca y la velocidad inicial (por defecto 0).
        """
        self.marca = marca
        self.velocidad = velocidad

    def aumentar_velocidad(self, incremento):
        """
        Suma una cantidad a la velocidad actual del coche.
        """
        if incremento > 0:
            self.velocidad += incremento
            print(f"El coche {self.marca} ha acelerado. Nueva velocidad: {self.velocidad} km/h")
        else:
            print("El incremento debe ser un número positivo.")

    def mostrar_estado(self):
        """Muestra la velocidad actual."""
        print(f"Vehículo: {self.marca} | Velocidad actual: {self.velocidad} km/h")

# --- Ejemplo de uso ---

# 1. Creamos un coche de marca 'Toyota' que empieza detenido
mi_coche = Coche("Toyota")

# 2. Mostramos el estado inicial
mi_coche.mostrar_estado()

# 3. Aumentamos la velocidad un par de veces
mi_coche.aumentar_velocidad(30)
mi_coche.aumentar_velocidad(50)

# 4. Ver el resultado final
mi_coche.mostrar_estado()
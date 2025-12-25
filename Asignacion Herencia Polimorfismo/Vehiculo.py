# Clase Base (Padre)
class Vehiculo:
    def mover(self):
        """Método que será definido por cada tipo de vehículo."""
        print("El vehículo se está desplazando.")

# Clase Hija: Carro
class Carro(Vehiculo):
    def mover(self):
        # Implementación específica para un coche
        print("🚗 El carro se mueve por la carretera usando un motor de combustión.")

# Clase Hija: Bicicleta
class Bicicleta(Vehiculo):
    def mover(self):
        # Implementación específica para una bicicleta
        print("🚲 La bicicleta se mueve por la ciclovía gracias al pedaleo del ciclista.")

# --- Ejemplo de uso ---

# Creamos una lista de diferentes vehículos
mis_vehiculos = [Carro(), Bicicleta()]

print("--- Estado de los vehículos ---")
for v in mis_vehiculos:
    v.mover()
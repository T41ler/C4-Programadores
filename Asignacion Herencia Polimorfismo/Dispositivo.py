# Clase Base (Padre)
class Dispositivo:
    def __init__(self, marca):
        self.marca = marca

    def encender(self):
        """Comportamiento genérico."""
        print("Iniciando sistema del dispositivo...")

# Clase Hija: Laptop
class Laptop(Dispositivo):
    def encender(self):
        # Sobrescritura con lógica específica
        print(f"💻 Laptop {self.marca}: Cargando sistema operativo y comprobando batería...")

# Clase Hija: Telefono
class Telefono(Dispositivo):
    def encender(self):
        # Sobrescritura con lógica específica
        print(f"📱 Teléfono {self.marca}: Mostrando logo de inicio y buscando señal de red...")

# --- Ejemplo de uso ---

# Creamos las instancias
mi_laptop = Laptop("Dell")
mi_telefono = Telefono("Samsung")

# Ejecutamos el mismo método en ambos
print("--- Acción: Encender dispositivos ---")
mi_laptop.encender()
mi_telefono.encender()
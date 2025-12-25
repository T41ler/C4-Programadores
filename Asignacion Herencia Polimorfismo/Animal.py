# Clase Base (Padre)
class Animal:
    def __init__(self, nombre):
        self.nombre = nombre

    def hablar(self):
        # Este método está pensado para ser sobrescrito por las hijas
        pass

# Clase Hija (Perro)
class Perro(Animal):
    def hablar(self):
        return "¡Guau! ¡Guau!"

# Clase Hija (Gato)
class Gato(Animal):
    def hablar(self):
        return "¡Miau! ¡Miau!"

# --- Ejemplo de uso ---

# Creamos los objetos
mi_perro = Perro("Cociutus")
mi_gato = Gato("Filomeno")

# Usamos el mismo método 'hablar' en diferentes animales
print(f"{mi_perro.nombre} dice: {mi_perro.hablar()}")
print(f"{mi_gato.nombre} dice: {mi_gato.hablar()}")
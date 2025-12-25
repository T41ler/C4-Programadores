class Usuario:
    def __init__(self, nombre, edad):
        """
        Método constructor para inicializar los atributos.
        """
        self.nombre = nombre
        self.edad = edad

    def mostrar_datos(self):
        """
        Muestra la información del usuario en pantalla.
        """
        print("--- Datos del Usuario ---")
        print(f"Nombre: {self.nombre}")
        print(f"Edad:   {self.edad} años")
        print("-------------------------")

# Ejemplo de uso:
# Creamos una instancia (objeto) de la clase
usuario1 = Usuario("Tailer Ferreira", 29)

# Llamamos a la función para mostrar los datos
usuario1.mostrar_datos()
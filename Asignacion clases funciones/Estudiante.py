class Estudiante:
    def __init__(self, nombre, calificaciones):
        """
        Constructor que recibe el nombre y una lista de números.
        """
        self.nombre = nombre
        self.calificaciones = calificaciones  # Se espera una lista, ej: [10, 8, 9]

    def calcular_promedio(self):
        """
        Calcula y retorna el promedio de las calificaciones.
        """
        if not self.calificaciones:
            return 0  # Evita error si la lista está vacía
        
        suma_total = sum(self.calificaciones)
        cantidad = len(self.calificaciones)
        promedio = suma_total / cantidad
        return promedio

    def mostrar_reporte(self):
        """Muestra el nombre y el promedio final."""
        promedio_final = self.calcular_promedio()
        print(f"Estudiante: {self.nombre}")
        print(f"Calificaciones: {self.calificaciones}")
        print(f"Promedio Final: {promedio_final:.2f}")
        print("-" * 30)

# --- Ejemplo de uso ---

# Creamos un estudiante con una lista de notas
estudiante1 = Estudiante("Tailer Ferreira", [90, 85, 100, 78])

# Llamamos a los métodos
estudiante1.mostrar_reporte()
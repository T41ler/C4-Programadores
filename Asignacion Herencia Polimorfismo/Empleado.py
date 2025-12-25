# Clase Base (Padre)
class Empleado:
    def __init__(self, nombre, salario):
        self.nombre = nombre
        self.salario = salario

    def mostrar_datos(self):
        print(f"Empleado: {self.nombre} | Salario Base: ${self.salario}")

# Clase Hija: Gerente
class Gerente(Empleado):
    def calcular_bono(self):
        # El gerente recibe el 20% de su salario
        bono = self.salario * 0.20
        return bono

# Clase Hija: Técnico
class Tecnico(Empleado):
    def calcular_bono(self):
        # El técnico recibe el 10% de su salario
        bono = self.salario * 0.10
        return bono

# --- Ejemplo de uso ---

# Creamos las instancias
jefe = Gerente("Taisha", 3000)
operador = Tecnico("Laisha", 1500)

# Mostramos resultados
for empleado in [jefe, operador]:
    empleado.mostrar_datos()
    print(f"Bono correspondiente: ${empleado.calcular_bono()}")
    print(f"Total a pagar: ${empleado.salario + empleado.calcular_bono()}")
    print("-" * 45)
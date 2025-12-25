class CuentaBancaria:
    def __init__(self, titular, balance=0):
        """
        Constructor para inicializar el titular y el balance inicial.
        """
        self.titular = titular
        self.balance = balance

    def depositar(self, cantidad):
        """
        Suma una cantidad positiva al balance actual.
        """
        if cantidad > 0:
            self.balance += cantidad
            print(f"💰 Depósito exitoso: +${cantidad}")
        else:
            print("❌ Error: La cantidad a depositar debe ser mayor a 0.")
        self.mostrar_balance()

    def retirar(self, cantidad):
        """
        Resta una cantidad al balance si hay fondos suficientes.
        """
        if cantidad > self.balance:
            print(f"⚠️ Fondos insuficientes. Intento de retiro: ${cantidad}")
        elif cantidad <= 0:
            print("❌ Error: La cantidad a retirar debe ser mayor a 0.")
        else:
            self.balance -= cantidad
            print(f"💸 Retiro exitoso: -${cantidad}")
        
        self.mostrar_balance()

    def mostrar_balance(self):
        """Muestra el estado actual de la cuenta."""
        print(f"Titular: {self.titular} | Balance actual: ${self.balance}")
        print("-" * 40)

# --- Ejemplo de uso ---

# Creamos la cuenta de "Tailer Ferreira" con un balance inicial de $100
cuenta_ana = CuentaBancaria("Tailer Ferreira", 100)

# Realizamos operaciones
cuenta_ana.mostrar_balance()
cuenta_ana.depositar(50)   # Balance debería ser 150
cuenta_ana.retirar(30)     # Balance debería ser 120
cuenta_ana.retirar(200)    # Debería dar error por fondos insuficientes
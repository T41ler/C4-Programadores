import tkinter as tk

def realizar_suma():
    try:
        # 1. Obtener los valores de los Entry (vienen como texto/string)
        num1 = float(entrada1.get())
        num2 = float(entrada2.get())
        
        # 2. Realizar la operación
        resultado = num1 + num2
        
        # 3. Mostrar el resultado en la etiqueta
        etiqueta_resultado.config(text=f"Resultado: {resultado}", fg="black")
    except ValueError:
        # En caso de que el usuario escriba letras en lugar de números
        etiqueta_resultado.config(text="Error: Ingresa números válidos", fg="red")

# Configuración de la ventana
root = tk.Tk()
root.title("Calculadora de Suma")
root.geometry("300x400")

# Elementos para el Primer Número
tk.Label(root, text="Número 1:").pack(pady=5)
entrada1 = tk.Entry(root)
entrada1.pack(pady=5)

# Elementos para el Segundo Número
tk.Label(root, text="Número 2:").pack(pady=5)
entrada2 = tk.Entry(root)
entrada2.pack(pady=5)

# Botón para Sumar
# El botón llama a la función realizar_suma
boton_sumar = tk.Button(root, text="Sumar", command=realizar_suma, bg="lightblue")
boton_sumar.pack(pady=20)

# Etiqueta para mostrar el resultado
etiqueta_resultado = tk.Label(root, text="Resultado: ", font=("Arial", 12, "bold"))
etiqueta_resultado.pack(pady=10)

root.mainloop()
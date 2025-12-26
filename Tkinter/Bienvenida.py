import tkinter as tk

# 1. Crear la ventana principal
ventana = tk.Tk()

# 2. Configurar la ventana (Título y tamaño)
ventana.title("Mi Primer Intento")
ventana.geometry("400x200")  # Ancho x Alto

# 3. Crear el mensaje de bienvenida (Label)
mensaje = tk.Label(
    ventana, 
    text="¡Bienvenido al Sistema!", 
    font=("Arial", 16, "bold"),
    fg="blue"  # Color de la letra
)

# 4. Posicionar el mensaje en la ventana
mensaje.pack(pady=50)  # pady agrega espacio arriba y abajo

# 5. Iniciar el bucle de la aplicación
ventana.mainloop()
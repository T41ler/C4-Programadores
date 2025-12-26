import tkinter as tk

def mostrar_texto():
    # .get() obtiene el texto que el usuario escribió en la caja
    contenido = entrada.get()
    
    # .config() cambia las propiedades del Label en tiempo real
    etiqueta_resultado.config(text=f"Escribiste: {contenido}")

# 1. Configuración de la ventana
root = tk.Tk()
root.title("Captura de Datos")
root.geometry("400x250")

# 2. Crear el Entry (Campo de texto)
instruccion = tk.Label(root, text="Escribe algo aquí abajo:")
instruccion.pack(pady=10)

entrada = tk.Entry(root, font=("Arial", 12))
entrada.pack(pady=5)

# 3. Crear el Botón
# 'command' indica qué función debe ejecutarse al hacer clic
boton = tk.Button(root, text="Mostrar en pantalla", command=mostrar_texto)
boton.pack(pady=10)

# 4. Crear el Label donde se verá el resultado
etiqueta_resultado = tk.Label(root, text="", font=("Arial", 12, "italic"), fg="green")
etiqueta_resultado.pack(pady=20)

# Iniciar la aplicación
root.mainloop()
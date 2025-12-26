import tkinter as tk

def agregar_item():
    # 1. Obtener el texto del Entry
    nuevo_elemento = entrada_texto.get()
    
    # 2. Validar que no esté vacío
    if nuevo_elemento.strip() != "":
        # Insertar al final del Listbox
        lista_visual.insert(tk.END, nuevo_elemento)
        
        # 3. Limpiar la caja de texto para el siguiente ingreso
        entrada_texto.delete(0, tk.END)
    else:
        # Opcional: podrías mostrar un mensaje de error
        print("El campo está vacío")

# Configuración de la ventana
root = tk.Tk()
root.title("Gestor de Lista Dinámica")
root.geometry("350x450")

# --- Sección de Entrada ---
tk.Label(root, text="Nuevo elemento:", font=("Arial", 10)).pack(pady=5)
entrada_texto = tk.Entry(root, font=("Arial", 12))
entrada_texto.pack(pady=5, padx=20, fill="x")

# Botón para agregar
btn_agregar = tk.Button(
    root, 
    text="Añadir a la lista", 
    command=agregar_item,
    bg="#2ecc71", # Color verde
    fg="white",
    font=("Arial", 10, "bold")
)
btn_agregar.pack(pady=10)

# --- Sección de Visualización ---
tk.Label(root, text="Lista de elementos:", font=("Arial", 10, "bold")).pack(pady=5)

# El Listbox donde se verán los elementos
lista_visual = tk.Listbox(root, font=("Arial", 11), selectmode=tk.SINGLE)
lista_visual.pack(pady=10, padx=20, fill="both", expand=True)

# Agregar algunos datos iniciales por cortesía
elementos_iniciales = ["Comida", "Bebidas", "Postres", "Sopas"]
for item in elementos_iniciales:
    lista_visual.insert(tk.END, item)

root.mainloop()
import tkinter as tk

# Variables globales para guardar la última posición del mouse
ultimo_x, ultimo_y = None, None

def iniciar_dibujo(event):
    """Guarda la posición inicial cuando se hace clic."""
    global ultimo_x, ultimo_y
    ultimo_x, ultimo_y = event.x, event.y

def dibujar(event):
    """Dibuja una línea desde la última posición hasta la actual."""
    global ultimo_x, ultimo_y
    
    # Creamos una línea en el canvas
    # (x1, y1, x2, y2, color, grosor)
    canvas.create_line(
        ultimo_x, ultimo_y, event.x, event.y, 
        fill="black", width=2, capstyle=tk.ROUND, smooth=True
    )
    
    # Actualizamos la última posición para que la siguiente línea comience aquí
    ultimo_x, ultimo_y = event.x, event.y

def limpiar_pantalla():
    """Borra todo lo dibujado en el canvas."""
    canvas.delete("all")

# 1. Configuración de la ventana
root = tk.Tk()
root.title("Mini Paint con Tkinter")

# 2. Crear el Canvas (Lienzo)
# bg es el fondo, cursor es el tipo de puntero que se ve al estar encima
canvas = tk.Canvas(root, bg="white", width=600, height=400, cursor="pencil")
canvas.pack(pady=10, padx=10)

# 3. Vincular (Bind) los eventos del mouse al Canvas
# <Button-1> es el clic izquierdo
canvas.bind("<Button-1>", iniciar_dibujo)
# <B1-Motion> es mover el mouse mientras el botón 1 está presionado
canvas.bind("<B1-Motion>", dibujar)

# 4. Botón opcional para limpiar
btn_limpiar = tk.Button(root, text="Borrar Todo", command=limpiar_pantalla)
btn_limpiar.pack(pady=5)

root.mainloop()
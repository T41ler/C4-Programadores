import tkinter as tk
from tkinter import ttk, messagebox
import mysql.connector

# --- LÓGICA DE BASE DE DATOS ---
class Database:
    def __init__(self):
        self.config = {
            'host': 'localhost',
            'user': 'root',
            'password': '',
            'database': 'sistema_registro'
        }

    def conectar(self):
        return mysql.connector.connect(**self.config)

# --- INTERFAZ GRÁFICA ---
class AppUsuarios:
    def __init__(self, root):
        self.db = Database()
        self.root = root
        self.root.title("Panel de Administración de Usuarios")
        self.root.geometry("600x500")
        
        # Estilo para que se vea moderno
        style = ttk.Style()
        style.configure("TNotebook.Tab", padding=[20, 10], font=('Segoe UI', 10))
        style.configure("TButton", font=('Segoe UI', 10))

        # Contenedor de Pestañas
        self.notebook = ttk.Notebook(self.root)
        self.notebook.pack(fill='both', expand=True, padx=10, pady=10)

        # Crear las pestañas
        self.setup_tab_registro()
        self.setup_tab_listado()

    def setup_tab_registro(self):
        self.tab_reg = ttk.Frame(self.notebook)
        self.notebook.add(self.tab_reg, text=" ➕ Registrar Usuario ")

        # Contenedor central
        frame = ttk.LabelFrame(self.tab_reg, text=" Datos del Nuevo Usuario ", padding=20)
        frame.place(relx=0.5, rely=0.4, anchor='center')

        ttk.Label(frame, text="Nombre de Usuario:").grid(row=0, column=0, sticky='w', pady=5)
        self.ent_user = ttk.Entry(frame, width=30)
        self.ent_user.grid(row=0, column=1, pady=5, padx=10)

        ttk.Label(frame, text="Contraseña:").grid(row=1, column=0, sticky='w', pady=5)
        self.ent_pass = ttk.Entry(frame, width=30, show="*") # Ocultar caracteres
        self.ent_pass.grid(row=1, column=1, pady=5, padx=10)

        ttk.Button(frame, text="Guardar Registro", command=self.procesar_registro).grid(row=2, column=0, columnspan=2, pady=20)

    def setup_tab_listado(self):
        self.tab_list = ttk.Frame(self.notebook)
        self.notebook.add(self.tab_list, text=" 📋 Lista de Usuarios ")

        # Tabla (Treeview)
        self.tree = ttk.Treeview(self.tab_list, columns=("ID", "Usuario"), show="headings")
        self.tree.heading("ID", text="ID Sistema")
        self.tree.heading("Usuario", text="Nombre de Usuario")
        self.tree.column("ID", width=100, anchor='center')
        self.tree.pack(fill='both', expand=True, padx=20, pady=20)

        # Botones de acción
        btn_frame = ttk.Frame(self.tab_list)
        btn_frame.pack(fill='x', padx=20, pady=10)
        
        ttk.Button(btn_frame, text="🔄 Actualizar Lista", command=self.cargar_datos).pack(side='left', padx=5)
        ttk.Button(btn_frame, text="❌ Salir", command=self.root.quit).pack(side='right', padx=5)

    # --- FUNCIONALIDAD ---
    def validar_fuerza(self, password):
        # Tu lógica original: mín 8 caracteres y al menos un número
        tiene_longitud = len(password) >= 8
        tiene_num = any(c.isdigit() for c in password)
        return tiene_longitud and tiene_num

    def procesar_registro(self):
        user = self.ent_user.get().strip()
        pw = self.ent_pass.get()

        if not user or not pw:
            messagebox.showwarning("Campos Vacíos", "Por favor rellena todos los campos.")
            return

        if not self.validar_fuerza(pw):
            messagebox.showerror("Seguridad Débil", "La contraseña debe tener 8+ caracteres e incluir un número.")
            return

        try:
            conn = self.db.conectar()
            cursor = conn.cursor()
            cursor.execute("INSERT INTO usuarios (nombre_usuario, contrasena) VALUES (%s, %s)", (user, pw))
            conn.commit()
            messagebox.showinfo("Éxito", f"Usuario '{user}' guardado correctamente.")
            self.ent_user.delete(0, tk.END)
            self.ent_pass.delete(0, tk.END)
            self.cargar_datos() # Actualizar tabla automáticamente
        except Exception as e:
            messagebox.showerror("Error", f"No se pudo guardar: {e}")
        finally:
            conn.close()

    def cargar_datos(self):
        # Limpiar tabla
        for item in self.tree.get_children():
            self.tree.delete(item)
        
        # Consultar SQL
        try:
            conn = self.db.conectar()
            cursor = conn.cursor()
            cursor.execute("SELECT id, nombre_usuario FROM usuarios")
            for row in cursor.fetchall():
                self.tree.insert("", tk.END, values=row)
        except Exception as e:
            print(f"Error al listar: {e}")
        finally:
            conn.close()

if __name__ == "__main__":
    root = tk.Tk()
    app = AppUsuarios(root)
    app.cargar_datos() # Carga inicial de la tabla
    root.mainloop()
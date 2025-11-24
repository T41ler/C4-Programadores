import string # Biblioteca investigada para obtener listas de caracteres

# --- ESTRUCTURAS DE DATOS (Vectores) ---
usuarios = []
contrasenas = []

# --- FUNCIONES ---

def verificar_contrasena(clave):
    """
    Analiza la fortaleza de la contraseña.
    Devuelve True si es segura, False si es débil.
    """
    errores = []
    
    # 1. Validar longitud mínima
    if len(clave) < 8:
        errores.append("- Debe tener al menos 8 caracteres.")
        
    # 2. Validar si tiene números (usando bucle y condicional)
    tiene_numero = False
    for letra in clave:
        if letra.isdigit():
            tiene_numero = True
            break
    if not tiene_numero:
        errores.append("- Debe contener al menos un número.")

    # 3. Validar mayúsculas (usando métodos de cadena)
    tiene_mayuscula = any(letra.isupper() for letra in clave)
    if not tiene_mayuscula:
        errores.append("- Debe contener al menos una mayúscula.")
        
    # 4. Validar caracteres especiales (usando la biblioteca string)
    # string.punctuation contiene: !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
    tiene_simbolo = any(letra in string.punctuation for letra in clave)
    if not tiene_simbolo:
        errores.append("- Debe contener un carácter especial (@, #, $, etc).")

    # Resultado final
    if len(errores) > 0:
        return False, errores # Retorna Falso y la lista de fallos
    else:
        return True, [] # Retorna Verdadero y lista vacía

def registrar_usuario():
    print("\n--- REGISTRAR NUEVO USUARIO ---")
    usuario = input("Ingrese nombre de usuario: ")
    
    # Validamos que el usuario no exista ya
    if usuario in usuarios:
        print("Error: El usuario ya existe.")
        return

    clave = input("Ingrese contraseña: ")
    
    # Verificamos fuerza antes de guardar (o avisamos)
    es_segura, mensajes = verificar_contrasena(clave)
    
    if es_segura:
        print(">> La contraseña es FUERTE.")
    else:
        print(">> PRECAUCIÓN: La contraseña es DÉBIL.")
        for msg in mensajes:
            print(msg)
        print("(El sistema permitirá guardarla, pero aparecerá en las alertas)")

    # Guardamos en los vectores (listas)
    usuarios.append(usuario)
    contrasenas.append(clave)
    print(f"Usuario '{usuario}' registrado con éxito.")

def generar_alertas():
    print("\n--- REPORTE DE VULNERABILIDADES ---")
    print(f"{'USUARIO':<15} | {'ESTADO DE CONTRASEÑA'}")
    print("-" * 40)
    
    hay_riesgos = False
    
    # Recorremos los vectores usando su índice
    for i in range(len(usuarios)):
        user_actual = usuarios[i]
        pass_actual = contrasenas[i]
        
        # Reutilizamos la función de verificación
        es_segura, _ = verificar_contrasena(pass_actual)
        
        if not es_segura:
            print(f"{user_actual:<15} | [RIESGO] Contraseña Débil")
            hay_riesgos = True
            
    if not hay_riesgos:
        print("Todo seguro: No se detectaron contraseñas débiles.")

# --- MENÚ PRINCIPAL ---
def main():
    while True:
        print("\n=== GESTOR DE CONTRASEÑAS ===")
        print("1. Registrar Usuario")
        print("2. Generar Alertas de Seguridad")
        print("3. Ver usuarios registrados (Debug)")
        print("4. Salir")
        
        opcion = input("Seleccione: ")
        
        if opcion == '1':
            registrar_usuario()
        elif opcion == '2':
            generar_alertas()
        elif opcion == '3':
            print("\nUsuarios:", usuarios)
        elif opcion == '4':
            print("Saliendo...")
            break
        else:
            print("Opción inválida.")

# Ejecutar programa
if __name__ == "__main__":
    main()
# --- SISTEMA DE REGISTRO DE USUARIOS ---

# Configuración inicial
MAX_USUARIOS = 10
usuarios = [None] * MAX_USUARIOS
contrasenas = [None] * MAX_USUARIOS
num_usuarios_registrados = 0

print("--- SISTEMA DE REGISTRO DE USUARIOS ---")

if num_usuarios_registrados < MAX_USUARIOS:
    print("***************************************")
    print("Paso 1: Ingreso de datos")
    nuevo_usuario = input("Ingrese el nuevo nombre de usuario: ")
    
    # Simulación de "Repetir... Hasta Que" usando "while True"
    while True:
        print("Ingrese la nueva contraseña (Mín. 8 caracteres, debe incluir números):")
        nueva_contrasena = input()
        
        # Validación de longitud
        largo_cadena = len(nueva_contrasena)
        tiene_longitud = largo_cadena >= 8
        
        # Validación de si tiene número
        # (En Python podemos usar any() y isdigit() para ser más eficientes)
        tiene_numero = any(char.isdigit() for char in nueva_contrasena)
        
        # Comprobar si la fuerza es válida
        fuerza_valida = tiene_longitud and tiene_numero
        
        if not fuerza_valida:
            print("ERROR: La contraseña NO cumple con los requisitos mínimos de fuerza.")
            print("***************************************")
            print("⚠️ ALERTA DE SEGURIDAD ⚠️")
            
            if not tiene_longitud:
                print(f"* Contraseña demasiado corta. Debe tener al menos 8 caracteres. (Longitud actual: {largo_cadena})")
            
            if not tiene_numero:
                print("* Se recomienda incluir al menos un número (0-9).")
            
            print("***************************************")
        else:
            # Si es válida, salimos del bucle
            break
            
    # Registro de datos (Python usa índices desde 0)
    usuarios[num_usuarios_registrados] = nuevo_usuario
    contrasenas[num_usuarios_registrados] = nueva_contrasena
    
    print("\n¡Registro exitoso!")
    print(f"Usuario: {usuarios[num_usuarios_registrados]}")
    print(f"Contraseña: {contrasenas[num_usuarios_registrados]}")
    
    num_usuarios_registrados += 1
else:
    print(f"Error: El límite de {MAX_USUARIOS} usuarios ha sido alcanzado.")
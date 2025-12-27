-- 1. Crear base de datos
CREATE DATABASE ventas;
USE ventas;

-- 2. Tabla Clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- 3. Tabla Productos
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0
);

-- 4. Tabla Facturas (Relaciona Cliente y Producto)
CREATE TABLE facturas (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_cliente INT,
    id_producto INT,
    cantidad INT NOT NULL,
    total DECIMAL(10, 2),
    CONSTRAINT fk_cliente_venta FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    CONSTRAINT fk_producto_venta FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
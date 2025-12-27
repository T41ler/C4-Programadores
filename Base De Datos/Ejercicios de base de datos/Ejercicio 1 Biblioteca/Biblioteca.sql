-- 1. Crear la base de datos
CREATE DATABASE biblioteca;
USE biblioteca;

-- 2. Crear la tabla Autores (Primero la que no tiene llaves foráneas)
CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);

-- 3. Crear la tabla Libros (Contiene la llave foránea)
CREATE TABLE libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    anio_publicacion INT,
    id_autor INT,
    -- Definimos la relación: id_autor de esta tabla apunta al id_autor de la tabla autores
    CONSTRAINT fk_autor 
        FOREIGN KEY (id_autor) 
        REFERENCES autores(id_autor) 
        ON DELETE CASCADE
);
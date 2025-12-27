DROP DATABASE IF EXISTS Academia;
CREATE DATABASE Academia;
USE Academia;

-- Tablas
CREATE TABLE departamentos (
    id_depto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_depto VARCHAR(50)
);

CREATE TABLE estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE,
    id_depto INT,
    FOREIGN KEY (id_depto) REFERENCES departamentos(id_depto)
);

CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(50),
    profesor VARCHAR(50)
);

CREATE TABLE calificaciones (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
);

-- Inserción de Departamentos
INSERT INTO departamentos (nombre_depto) VALUES ('Matemáticas'), ('Literatura'), ('Sistemas');

-- 14. LISTA DE 15 ESTUDIANTES
INSERT INTO estudiantes (nombre, apellido, fecha_nacimiento, id_depto) VALUES 
('Ana', 'García', '2005-03-15', 1), ('Alberto', 'Pérez', '2004-11-20', 1),
('Beatriz', 'García', '2005-01-10', 2), ('Carlos', 'López', '2003-05-22', 3),
('Daniela', 'Martínez', '2004-07-08', 2), ('Esteban', 'Rodríguez', '2002-12-01', 3),
('Fernanda', 'García', '2006-02-14', 1), ('Gabriel', 'Sánchez', '2003-09-30', 2),
('Héctor', 'Ortiz', '2004-06-25', 1), ('Isabel', 'Gómez', '2005-08-12', 3),
('Jorge', 'Ruiz', '2002-04-05', 1), ('Karla', 'Alonso', '2003-10-18', 2),
('Luis', 'Mendoza', '2004-01-20', 3), ('María', 'Hernández', '2005-05-30', 1),
('Andrés', 'García', '2004-02-28', 2);

-- Inserción de Cursos y Profesores
INSERT INTO cursos (nombre_curso, profesor) VALUES 
('Python I', 'Dr. Sosa'), ('Bases de Datos', 'Dr. Sosa'), 
('Cálculo Integral', 'Ing. Ramos'), ('Literatura Moderna', 'Lic. Luna');

-- ASIGNACIÓN DE CALIFICACIONES A LOS 15 ESTUDIANTES
INSERT INTO calificaciones (id_estudiante, nota) VALUES 
(1, 95.0), (2, 82.5), (3, 91.0), (4, 75.0), (5, 98.0), 
(6, 88.0), (7, 93.5), (8, 79.0), (9, 85.0), (10, 92.0), 
(11, 70.0), (12, 89.5), (13, 84.0), (14, 100.0), (15, 96.0);
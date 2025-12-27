-- 1. Crear la base de datos
CREATE DATABASE colegio;
USE colegio;

-- 2. Tabla Estudiantes
CREATE TABLE estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT,
    email VARCHAR(100) UNIQUE
);

-- 3. Tabla Cursos
CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    profesor VARCHAR(100)
);

-- 4. Tabla Matriculas (Tabla Intermedia)
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATE,
    -- Relaciones
    CONSTRAINT fk_estudiante FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);
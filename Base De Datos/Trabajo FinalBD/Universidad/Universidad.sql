DROP DATABASE IF EXISTS universidad;
CREATE DATABASE universidad;
USE universidad;

-- 1. Departamentos (Base para Profesores y Estudiantes)
CREATE TABLE Departamento (
    id_depto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_depto VARCHAR(100) NOT NULL
);

-- 2. Estudiantes (Relacionado con Departamento)
CREATE TABLE Estudiante (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE,
    id_depto INT,
    FOREIGN KEY (id_depto) REFERENCES Departamento(id_depto)
);

-- 3. Profesores
CREATE TABLE Profesor (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    id_depto INT,
    FOREIGN KEY (id_depto) REFERENCES Departamento(id_depto)
);

-- 4. Cursos (Materias generales)
CREATE TABLE Curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100),
    creditos INT
);

-- 5. Clase (Una instancia de un curso con un profesor)
CREATE TABLE Clase (
    id_clase INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT,
    id_profesor INT,
    semestre VARCHAR(20),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor)
);

-- 6. Inscripcion (Relaciona Estudiante con Clase)
CREATE TABLE Inscripcion (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_clase INT,
    fecha_inscripcion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiante(id_estudiante),
    FOREIGN KEY (id_clase) REFERENCES Clase(id_clase)
);

-- 7. Calificacion
CREATE TABLE Calificacion (
    id_calificacion INT AUTO_INCREMENT PRIMARY KEY,
    id_inscripcion INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (id_inscripcion) REFERENCES Inscripcion(id_inscripcion) ON DELETE CASCADE
);
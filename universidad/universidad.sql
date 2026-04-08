
CREATE DATABASE universidad_db if not exists;

CREATE TABLE estudiantes(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    cedula varchar(14) NOT NULL UNIQUE,
    telefono varchar(15) NOT NULL,
    email varchar(100) NOT NULL
);

CREATE TABLE cursos(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    codigo varchar(10) NOT NULL UNIQUE,
    nombre varchar(100) NOT NULL,
    descripcion varchar(200),
    creditos int NOT NULL
);

CREATE TABLE profesores(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    cedula varchar(14) NOT NULL UNIQUE,
    telefono varchar(15) NOT NULL,
    email varchar(100) NOT NULL
);

CREATE TABLE estudiantes_cursos(
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    estudiante_id int NOT NULL,
    curso_id int NOT NULL,
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id) ON DELETE CASCADE,
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE,
    nota FLOAT not null
)

CREATE TABLE profesores_cursos(
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    profesor_id int NOT NULL,
    curso_id int NOT NULL,
    FOREIGN KEY (profesor_id) REFERENCES profesores(id) ON DELETE CASCADE,
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE
);


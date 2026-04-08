CREATE DATABASE proyecto_db;
CREATE TABLE empleados(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    cedula varchar(14) NOT NULL UNIQUE,
    telefono varchar(15) NOT NULL,
    email varchar(100) NOT NULL
);

CREATE TABLE supervisores(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    cedula varchar(14) NOT NULL UNIQUE,
    telefono varchar(15) NOT NULL,
    email varchar(100) NOT NULL
);

CREATE TABLE proyectos(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nombre varchar(100) NOT NULL,
    descripcion text,
    fecha_inicio date NOT NULL
);

CREATE TABLE supervisores_proyectos(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    supervisor_id int NOT NULL,
    proyecto_id int NOT NULL,
    FOREIGN KEY (supervisor_id) REFERENCES supervisores(id),
    FOREIGN KEY (proyecto_id) REFERENCES proyectos(id)
);

CREATE TABLE empleados_proyectos(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    empleado_id int NOT NULL,
    proyecto_id int NOT NULL,
    FOREIGN KEY (empleado_id) REFERENCES empleados(id),
    FOREIGN KEY (proyecto_id) REFERENCES proyectos(id),
    porcentaje_participacion int NOT NULL
);
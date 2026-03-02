-- Active: 1754568219041@@127.0.0.1@5432@biblioteca
BEGIN TRANSACTION;

CREATE TABLE libros (
    id_libro INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    codigo_libro CHARACTER VARYING(25) unique not null,
    titulo CHARACTER VARYING(100) not null,
    autor CHARACTER VARYING(100) not null,
    anio_publicacion INT CHECK (anio_publicacion > 0),
    genero CHARACTER VARYING(50) not null
);

CREATE TABLE usuarios (
    id_usuario INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre CHARACTER VARYING(100) not null,
    email CHARACTER VARYING(100) unique not null,
    cedula CHARACTER VARYING(15) unique not null,
    telefono CHARACTER VARYING(15)
);

CREATE TABLE prestamos (
    id_prestamo INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_libro INT REFERENCES libros(id_libro) ON DELETE CASCADE,
    id_usuario INT REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
    fecha_prestamo DATE not null,
    fecha_devolucion DATE,
    estado CHARACTER VARYING(20) NOT NULL CHECK (estado IN ('prestado', 'devuelto'))
);

COMMIT;
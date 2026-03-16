BEGIN TRANSACTION;

INSERT INTO libros (codigo_libro, titulo, autor, anio_publicacion, genero) VALUES
('LIB001', 'Cien años de soledad', 'Gabriel García Márquez', 1967, 'Novela'),
('LIB002', 'Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 'Clásico'),
('LIB003', 'La ciudad y los perros', 'Mario Vargas Llosa', 1963, 'Novela'),
('LIB004', 'El principito', 'Antoine de Saint-Exupéry', 1943, 'Fábula'),
('LIB005', 'Rayuela', 'Julio Cortázar', 1963, 'Novela experimental');

SELECT * FROM libros;
select anio_publicacion as año, autor  from libros where titulo = 'Rayuela';

INSERT INTO usuarios (nombre, email, cedula, telefono) VALUES
('Ana Pérez', 'ana.perez@example.com','V-15693289', '04141234567'),
('Carlos Gómez', 'carlos.gomez@example.com', 'V-12345678', '04142345678'),
('María Rodríguez', 'maria.rodriguez@example.com', 'V-87654321', '04143456789'),
('Luis Fernández', 'luis.fernandez@example.com', 'V-23456789', '04144567890'),
('Sofía Martínez', 'sofia.martinez@example.com', 'V-34567890', '04145678901');



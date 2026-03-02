BEGIN TRANSACTION;

INSERT INTO libros (codigo_libro, titulo, autor, anio_publicacion, genero) VALUES
('LIB001', 'Cien años de soledad', 'Gabriel García Márquez', 1967, 'Novela'),
('LIB002', 'Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 'Clásico'),
('LIB003', 'La ciudad y los perros', 'Mario Vargas Llosa', 1963, 'Novela'),
('LIB004', 'El principito', 'Antoine de Saint-Exupéry', 1943, 'Fábula'),
('LIB005', 'Rayuela', 'Julio Cortázar', 1963, 'Novela experimental');

SELECT * FROM libros;
select anio_publicacion as año, autor  from libros where titulo = 'Rayuela';

INSERT INTO usuarios (nombre, email, telefono) VALUES
('Ana Pérez', 'ana.perez@example.com', '04141234567'),
('Carlos Gómez', 'carlos.gomez@example.com', '04142345678'),
('María Rodríguez', 'maria.rodriguez@example.com', '04143456789'),
('Luis Fernández', 'luis.fernandez@example.com', '04144567890'),
('Sofía Martínez', 'sofia.martinez@example.com', '04145678901');

INSERT INTO prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion, estado) VALUES
(1, 1, '2025-08-01', NULL, 'prestado'),  -- Ana pidió "Cien años de soledad"
(2, 2, '2025-08-05', '2025-08-15', 'devuelto'), -- Carlos pidió "Don Quijote"
(3, 3, '2025-08-10', NULL, 'prestado'),  -- María pidió "La ciudad y los perros"
(4, 4, '2025-08-12', NULL, 'prestado'),  -- Luis pidió "El principito"
(5, 5, '2025-08-14', '2025-08-20', 'devuelto'); -- Sofía pidió "Rayuela"


BEGIN TRANSACTION;

INSERT INTO libros (codigo_libro, titulo, autor, anio_publicacion, genero) VALUES
('LIB001', 'Cien años de soledad', 'Gabriel García Márquez', 1967, 'Novela'),
('LIB002', 'Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 'Clásico'),
('LIB003', 'La ciudad y los perros', 'Mario Vargas Llosa', 1963, 'Novela'),
('LIB004', 'El principito', 'Antoine de Saint-Exupéry', 1943, 'Fábula'),
('LIB005', 'Rayuela', 'Julio Cortázar', 1963, 'Novela experimental');

SELECT * FROM libros;
select anio_publicacion as año, autor  from libros where titulo = 'Rayuela';

SELECT * FROM usuarios;

insert into prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion, estado)values(1, 2, '2024-06-01', '2024-06-15', 'devuelto');
insert into prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion, estado)values(2, 2, '2024-06-01', '2024-06-15', 'prestado');

insert into prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion, estado)values(5, 4, '2026-07-02', '2026-09-15', 'prestado');

insert into prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion, estado)values(5, 5, '2024-06-01', '2024-06-15', 'devuelto');

insert into prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion, estado)values(3, 3, '2024-06-01', '2024-06-15', 'devuelto');

insert into prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion, estado)values(1, 3, '2024-06-01', '2024-06-15', 'devuelto');


SELECT * FROM prestamos;



# INNER JOIN: Devuelve solo las filas que tienen coincidencias en ambas tablas.
# Ejemplo 1: Mostrar el título del libro y la fecha del préstamo.
SELECT 
libros.titulo,
prestamos.fecha_prestamo
FROM prestamos
INNER JOIN libros
ON prestamos.id_libro = libros.id_libro;

# Ejemplo 2: Mostrar nombre del usuario, título del libro y estado del préstamo.
SELECT 
usuarios.nombre,
libros.titulo,
prestamos.estado
FROM prestamos
JOIN usuarios
ON prestamos.id_usuario = usuarios.id_usuario
INNER JOIN libros
ON prestamos.id_libro = libros.id_libro
where usuarios.id_usuario= '2' and libros.titulo='Cien años de soledad';

 

# LEFT JOIN: Mostrar todos los libros y su estado de préstamo.

SELECT 
libros.titulo,
prestamos.estado
FROM libros
LEFT JOIN prestamos
ON libros.id_libro = prestamos.id_libro;

# LEFT JOIN: Mostrar todos los usuarios y los libros que han solicitado.
SELECT
    u.nombre,
    l.titulo AS libro_solicitado
FROM usuarios u
LEFT JOIN prestamos p
    ON u.id_usuario = p.id_usuario
LEFT JOIN libros l
    ON p.id_libro = l.id_libro;

# RIGHT JOIN: El right join devuelve todas los registros de la tabla derecha

# Ejemplo 1 Mostrar todos los préstamos y el nombre del usuario que los realizó.

SELECT
usuarios.nombre,
prestamos.fecha_prestamo
FROM usuarios
RIGHT JOIN prestamos
ON usuarios.id_usuario = prestamos.id_usuario;

# Ejemplo 2 Mostrar todos los préstamos y el título del libro.

SELECT
libros.titulo,
prestamos.estado
FROM libros
RIGHT JOIN prestamos
ON libros.id_libro = prestamos.id_libro;

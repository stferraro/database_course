BEGIN TRANSACTION;

INSERT INTO estudiantes (nombre, apellido, cedula, telefono, email) VALUES
('Juan', 'Perez', 'V12345678', '04141234567', 'juan.perez@email.com'),
('Maria', 'Gomez', 'V87654321', '04142345678', 'maria.gomez@email.com'),
('Carlos', 'Lopez', 'V11223344', '04143456789', 'carlos.lopez@email.com'),
('Ana', 'Martinez', 'V22334455', '04144567890', 'ana.martinez@email.com'),
('Luis', 'Hernandez', 'V33445566', '04145678901', 'luis.hernandez@email.com'),
('Sofia', 'Ramirez', 'V44556677', '04146789012', 'sofia.ramirez@email.com'),
('Diego', 'Torres', 'V55667788', '04147890123', 'diego.torres@email.com'),
('Valentina', 'Castro', 'V66778899', '04148901234', 'valentina.castro@email.com');

INSERT INTO cursos (codigo, nombre, descripcion, creditos) VALUES
('BD101', 'Bases de Datos', 'Fundamentos de bases de datos', 4),
('PRG101', 'Programacion I', 'Introduccion a la programacion', 3),
('PRG201', 'Programacion II', 'Programacion orientada a objetos', 4),
('MAT101', 'Matematica I', 'Calculo diferencial', 4),
('MAT201', 'Matematica II', 'Calculo integral', 4),
('RED101', 'Redes I', 'Fundamentos de redes', 3),
('SO101', 'Sistemas Operativos', 'Conceptos de SO', 4),
('WEB101', 'Desarrollo Web', 'HTML, CSS y JS', 3);

INSERT INTO profesores (nombre, apellido, cedula, telefono, email) VALUES
('Pedro', 'Sanchez', 'V99887766', '04141111111', 'pedro.sanchez@email.com'),
('Laura', 'Diaz', 'V88776655', '04142222222', 'laura.diaz@email.com'),
('Miguel', 'Ruiz', 'V77665544', '04143333333', 'miguel.ruiz@email.com'),
('Carmen', 'Vega', 'V66554433', '04144444444', 'carmen.vega@email.com'),
('Jose', 'Morales', 'V55443322', '04145555555', 'jose.morales@email.com'),
('Elena', 'Rojas', 'V44332211', '04146666666', 'elena.rojas@email.com'),
('Andres', 'Navarro', 'V33221100', '04147777777', 'andres.navarro@email.com'),
('Patricia', 'Ortega', 'V22110099', '04148888888', 'patricia.ortega@email.com');

INSERT INTO estudiantes_cursos (estudiante_id, curso_id, nota) VALUES
(1, 1, 18.5),
(1, 2, 17.0),
(2, 1, 15.0),
(2, 3, 16.5),
(3, 2, 14.0),
(3, 4, 13.5),
(4, 5, 19.0),
(4, 1, 18.0),
(5, 6, 12.5),
(5, 2, 14.5),
(6, 7, 16.0),
(6, 3, 15.5),
(7, 8, 17.5),
(7, 1, 16.0),
(8, 4, 18.5),
(8, 5, 17.0);

INSERT INTO profesores_cursos (profesor_id, curso_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

COMMIT;


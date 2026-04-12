BEGIN TRANSACTION;

INSERT INTO empleados (nombre, apellido, cedula, telefono, email) VALUES
('Juan', 'Perez', 'V12345678', '04141234567', 'juan.perez@email.com'),
('Maria', 'Gomez', 'V23456789', '04142345678', 'maria.gomez@email.com'),
('Carlos', 'Lopez', 'V34567890', '04143456789', 'carlos.lopez@email.com'),
('Ana', 'Martinez', 'V45678901', '04144567890', 'ana.martinez@email.com'),
('Luis', 'Hernandez', 'V56789012', '04145678901', 'luis.hernandez@email.com'),
('Sofia', 'Ramirez', 'V67890123', '04146789012', 'sofia.ramirez@email.com'),
('Diego', 'Torres', 'V78901234', '04147890123', 'diego.torres@email.com'),
('Valentina', 'Castro', 'V89012345', '04148901234', 'valentina.castro@email.com');

INSERT INTO supervisores (nombre, apellido, cedula, telefono, email) VALUES
('Pedro', 'Sanchez', 'V99887766', '04141111111', 'pedro.sanchez@email.com'),
('Laura', 'Diaz', 'V88776655', '04142222222', 'laura.diaz@email.com'),
('Miguel', 'Ruiz', 'V77665544', '04143333333', 'miguel.ruiz@email.com'),
('Carmen', 'Vega', 'V66554433', '04144444444', 'carmen.vega@email.com'),
('Jose', 'Morales', 'V55443322', '04145555555', 'jose.morales@email.com'),
('Elena', 'Rojas', 'V44332211', '04146666666', 'elena.rojas@email.com'),
('Andres', 'Navarro', 'V33221100', '04147777777', 'andres.navarro@email.com'),
('Patricia', 'Ortega', 'V22110099', '04148888888', 'patricia.ortega@email.com');

INSERT INTO proyectos (nombre, descripcion, fecha_inicio) VALUES
('Sistema Web', 'Desarrollo de sistema web empresarial', '2025-01-10'),
('App Movil', 'Aplicación móvil de ventas', '2025-02-15'),
('ERP Interno', 'Sistema ERP para la empresa', '2025-03-01'),
('CRM Clientes', 'Gestión de clientes', '2025-03-20'),
('Data Warehouse', 'Almacenamiento de datos corporativos', '2025-04-05'),
('Automatizacion', 'Procesos automatizados internos', '2025-04-15'),
('Redes Corporativas', 'Infraestructura de red', '2025-05-01'),
('Seguridad Informatica', 'Implementación de seguridad informática', '2025-05-20');

INSERT INTO supervisores_proyectos (supervisor_id, proyecto_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO empleados_proyectos (empleado_id, proyecto_id, porcentaje_participacion) VALUES
(1, 1, 80),
(2, 1, 60),
(3, 2, 75),
(4, 3, 50),
(5, 4, 90),
(6, 5, 70),
(7, 6, 85),
(8, 7, 65);

COMMIT;

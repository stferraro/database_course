BEGIN;

-- ============================
-- TABLAS MAESTRAS
-- ============================

-- Especies (perro, gato, ave)
CREATE TABLE especie (
    id_especie INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT
);

-- Razas
CREATE TABLE raza (
    id_raza INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_especie INT NOT NULL REFERENCES especie(id_especie),
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    UNIQUE (id_especie, nombre)
);

-- Propietarios
CREATE TABLE propietario (
    id_propietario INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    cedula VARCHAR(50),
    telefono VARCHAR(50),
    correo VARCHAR(150),
    direccion TEXT
);

-- Veterinarios
CREATE TABLE veterinario (
    id_veterinario INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    matricula VARCHAR(100) UNIQUE,
    telefono VARCHAR(50),
    correo VARCHAR(150),
    especialidad VARCHAR(150)
);

-- ============================
-- MASCOTAS
-- ============================

CREATE TABLE mascota (
    id_mascota INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_propietario INT NOT NULL REFERENCES propietario(id_propietario),
    nombre VARCHAR(100) NOT NULL,
    id_especie INT REFERENCES especie(id_especie),
    id_raza INT REFERENCES raza(id_raza),
    fecha_nacimiento DATE,
    sexo VARCHAR(10),   -- más simple que ENUM
    peso NUMERIC(6,2),
    observaciones TEXT
);

-- ============================
-- INVENTARIO Y SERVICIOS
-- ============================

CREATE TABLE producto (
    id_producto INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tipo VARCHAR(20) NOT NULL,     -- 'MEDICAMENTO' o 'SERVICIO'
    nombre VARCHAR(200) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(12,2) NOT NULL DEFAULT 0,
    stock NUMERIC(12,2) DEFAULT 0,          -- para medicamentos
    fecha_vencimiento DATE                  -- opcional
);

-- ============================
-- CONSULTAS / VISITAS
-- ============================

CREATE TABLE consulta (
    id_consulta INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_mascota INT NOT NULL REFERENCES mascota(id_mascota),
    id_propietario INT NOT NULL REFERENCES propietario(id_propietario),
    id_veterinario INT REFERENCES veterinario(id_veterinario),
    fecha TIMESTAMP NOT NULL DEFAULT NOW(),
    motivo TEXT,
    peso NUMERIC(6,2),
    temperatura NUMERIC(4,1),
    notas TEXT
);

-- Diagnósticos
CREATE TABLE diagnostico (
    id_diagnostico INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_consulta INT NOT NULL REFERENCES consulta(id_consulta),
    descripcion TEXT NOT NULL,
    codigo VARCHAR(50)
);

-- Tratamientos
CREATE TABLE tratamiento (
    id_tratamiento INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_consulta INT NOT NULL REFERENCES consulta(id_consulta),
    id_producto INT REFERENCES producto(id_producto),
    dosis VARCHAR(100),
    cantidad NUMERIC(12,2),
    frecuencia VARCHAR(100),
    duracion VARCHAR(100),
    observaciones TEXT
);

-- ============================
-- FACTURACIÓN
-- ============================

CREATE TABLE factura (
    id_factura INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    numero VARCHAR(60) NOT NULL UNIQUE,
    id_propietario INT NOT NULL REFERENCES propietario(id_propietario),
    fecha TIMESTAMP NOT NULL DEFAULT NOW(),
    subtotal NUMERIC(14,2) DEFAULT 0,
    descuento NUMERIC(14,2) DEFAULT 0,
    impuesto NUMERIC(14,2) DEFAULT 0,
    total NUMERIC(14,2) DEFAULT 0,
    estado VARCHAR(50) DEFAULT 'BORRADOR'
);

CREATE TABLE factura_linea (
    id_linea INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_factura INT NOT NULL REFERENCES factura(id_factura),
    id_producto INT NOT NULL REFERENCES producto(id_producto),
    descripcion TEXT,
    cantidad NUMERIC(12,2) DEFAULT 1,
    precio_unitario NUMERIC(14,2) DEFAULT 0,
    descuento NUMERIC(14,2) DEFAULT 0
);

COMMIT;

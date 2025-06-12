-- CREACIÓN DE BASE DE DATOS Y TABLAS
CREATE DATABASE IF NOT EXISTS petcare;
USE petcare;

-- Tabla cliente
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    rut VARCHAR(12) UNIQUE,
    telefono VARCHAR(25),
    email VARCHAR(100)
);

-- Tabla especie
CREATE TABLE especie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Tabla raza
CREATE TABLE raza (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    especie_id INT,
    FOREIGN KEY (especie_id) REFERENCES especie(id)
);

-- Tabla mascota (corregida)
CREATE TABLE mascota (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    sexo ENUM('Macho', 'Hembra'),
    fecha_nacimiento DATE,
    cliente_id INT,
    especie_id INT,
    raza_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (especie_id) REFERENCES especie(id),
    FOREIGN KEY (raza_id) REFERENCES raza(id)
);

-- Tabla comuna
CREATE TABLE comuna (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Tabla empleado
CREATE TABLE empleado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    rol ENUM('Veterinario', 'Asistente', 'Administrador'),
    rut VARCHAR(12) UNIQUE
);

-- Tabla producto
CREATE TABLE producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    tipo ENUM('Medicamento', 'Accesorio', 'Alimento'),
    stock INT,
    precio DECIMAL(10,2)
);

-- Tabla servicio
CREATE TABLE servicio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2)
);

-- Tabla cita
CREATE TABLE cita (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME,
    tipo ENUM('Presencial', 'Domicilio'),
    mascota_id INT,
    comuna_id INT,
    empleado_id INT,
    FOREIGN KEY (mascota_id) REFERENCES mascota(id),
    FOREIGN KEY (comuna_id) REFERENCES comuna(id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(id)
);

-- Tabla venta
CREATE TABLE venta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME,
    cliente_id INT,
    total DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

-- Tabla detalle_venta
CREATE TABLE detalle_venta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venta_id INT,
    producto_id INT,
    cantidad INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (venta_id) REFERENCES venta(id),
    FOREIGN KEY (producto_id) REFERENCES producto(id)
);

-- Tabla atencion
CREATE TABLE atencion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cita_id INT,
    servicio_id INT,
    observacion TEXT,
    FOREIGN KEY (cita_id) REFERENCES cita(id),
    FOREIGN KEY (servicio_id) REFERENCES servicio(id)
);

-- Tabla historial_clinico
CREATE TABLE historial_clinico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota_id INT,
    fecha DATE,
    descripcion TEXT,
    FOREIGN KEY (mascota_id) REFERENCES mascota(id)
);

-- Tabla proveedor
CREATE TABLE proveedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    rut VARCHAR(12) UNIQUE,
    contacto VARCHAR(100)
);

-- Tabla ingreso_producto 
CREATE TABLE ingreso_producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT,
    proveedor_id INT,
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (producto_id) REFERENCES producto(id),
    FOREIGN KEY (proveedor_id) REFERENCES proveedor(id)
);


-- vistas 

-- Vista de ventas detalladas
CREATE VIEW vista_ventas_detalladas AS
SELECT 
    v.id AS venta_id,
    v.fecha,
    c.nombre AS cliente_nombre,
    c.apellido AS cliente_apellido,
    p.nombre AS producto,
    dv.cantidad,
    dv.subtotal
FROM venta v
JOIN cliente c ON v.cliente_id = c.id
JOIN detalle_venta dv ON v.id = dv.venta_id
JOIN producto p ON dv.producto_id = p.id;

-- Vista de historial clínico por mascota

CREATE VIEW vista_historial_clinico AS
SELECT 
    m.nombre AS mascota,
    h.fecha,
    h.descripcion
FROM historial_clinico h
JOIN mascota m ON h.mascota_id = m.id;



-- Vista de citas agendadas
CREATE VIEW vista_citas_agendadas AS
SELECT 
    c.id,
    c.fecha,
    m.nombre AS mascota,
    e.nombre AS empleado,
    c.tipo
FROM cita c
JOIN mascota m ON c.mascota_id = m.id
JOIN empleado e ON c.empleado_id = e.id;


-- Vista de stock bajo
CREATE VIEW vista_stock_bajo AS
SELECT 
    nombre,
    stock
FROM producto
WHERE stock < 10;

-- Vista de atención con nombre de servicio
CREATE VIEW vista_atenciones_servicio AS
SELECT 
    a.id,
    c.fecha AS fecha_cita,
    s.nombre AS servicio,
    a.observacion
FROM atencion a
JOIN cita c ON a.cita_id = c.id
JOIN servicio s ON a.servicio_id = s.id;

-- PROCEDIMIENTOS ALMACENADOS

-- Registrar una nueva cita
DELIMITER //
CREATE PROCEDURE registrar_cita(
    IN p_fecha DATETIME,
    IN p_tipo ENUM('Presencial', 'Domicilio'),
    IN p_mascota_id INT,
    IN p_comuna_id INT,
    IN p_empleado_id INT
)
BEGIN
    INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id)
    VALUES (p_fecha, p_tipo, p_mascota_id, p_comuna_id, p_empleado_id);
END;
//
DELIMITER ;

-- Actualizar stock de producto
DELIMITER //
CREATE PROCEDURE actualizar_stock(
    IN p_producto_id INT,
    IN p_cantidad INT
)
BEGIN
    UPDATE producto
    SET stock = stock + p_cantidad
    WHERE id = p_producto_id;
END;
//
DELIMITER ;

-- FUNCIONES 

-- Calcular total de venta
DELIMITER //
CREATE FUNCTION calcular_total_venta(p_venta_id INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(subtotal)
    INTO total
    FROM detalle_venta
    WHERE venta_id = p_venta_id;
    RETURN total;
END;
//
DELIMITER ;

-- Obtener edad de mascota en años
DELIMITER //
CREATE FUNCTION obtener_edad_mascota(p_mascota_id INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE edad INT;
    SELECT TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE())
    INTO edad
    FROM mascota
    WHERE id = p_mascota_id;
    RETURN edad;
END;
//
DELIMITER ;ç

-- TRIGGERS 

-- Actualizar stock tras venta
DELIMITER //
CREATE TRIGGER tr_actualizar_stock_venta
AFTER INSERT ON detalle_venta
FOR EACH ROW
BEGIN
    UPDATE producto
    SET stock = stock - NEW.cantidad
    WHERE id = NEW.producto_id;
END;
//
DELIMITER ;

-- Insertar en historial clínico al registrar atención
DELIMITER //
CREATE TRIGGER tr_insertar_historial_clinico
AFTER INSERT ON atencion
FOR EACH ROW
BEGIN
    INSERT INTO historial_clinico (mascota_id, fecha, descripcion)
    SELECT c.mascota_id, NOW(), CONCAT('Servicio realizado: ', s.nombre)
    FROM cita c
    JOIN servicio s ON s.id = NEW.servicio_id
    WHERE c.id = NEW.cita_id;
END;
//
DELIMITER ;




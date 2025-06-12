

-- consulta sql para Clientes que han comprado más de 100.000 CLP en total
SELECT 
    c.nombre, 
    c.apellido, 
    SUM(v.total) AS total_compras
FROM cliente c
JOIN venta v ON c.id = v.cliente_id
GROUP BY c.id
HAVING total_compras > 100000
ORDER BY total_compras DESC;


-- consulta sql para Top 3 servicios más realizados en la clínica
SELECT 
    s.nombre AS servicio, 
    COUNT(a.id) AS veces_realizado
FROM servicio s
JOIN atencion a ON s.id = a.servicio_id
GROUP BY s.id
ORDER BY veces_realizado DESC
LIMIT 3;


-- consulta sql para Mascotas con 3 o más atenciones registradas
SELECT 
    m.nombre AS mascota, 
    COUNT(a.id) AS total_atenciones
FROM mascota m
JOIN cita c ON m.id = c.mascota_id
JOIN atencion a ON a.cita_id = c.id
GROUP BY m.id
HAVING total_atenciones >= 3;

--  Consulta: Empleado con más mascotas atendidas
SELECT 
    e.nombre AS nombre_empleado,
    e.apellido AS apellido_empleado,
    COUNT(DISTINCT c.mascota_id) AS cantidad_mascotas_atendidas
FROM empleado e
JOIN cita c ON e.id = c.empleado_id
JOIN atencion a ON a.cita_id = c.id
GROUP BY e.id
ORDER BY cantidad_mascotas_atendidas DESC
LIMIT 1;


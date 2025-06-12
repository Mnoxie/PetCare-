-- Datos para la tabla cliente
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Gregorio', 'Dominguez', '15700910-4', '+56 9 4430 4048', 'petrona79@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Juan Carlos', 'Escobar', '21181144-7', '+56 9 6787 9819', 'pratsmaria-carmen@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Araceli', 'Sola', '10758461-7', '+56 9 4403 6943', 'kalonso@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Lorenza', 'Cabeza', '12587685-8', '+56 9 2770 9255', 'rcampillo@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Concha', 'Cardona', '19279231-0', '+56 9 5931 6808', 'floresgabino@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Mireia', 'Aragón', '22513557-3', '+56 9 4299 2960', 'qmaestre@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Anabel', 'Aragonés', '19948014-1', '+56 9 5622 6013', 'cmaldonado@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Marcelo', 'Soto', '15123776-7', '+56 9 2655 3666', 'sabasburgos@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Evita', 'Montes', '10143285-7', '+56 9 8309 9894', 'xanglada@gmail.com');
INSERT INTO cliente (nombre, apellido, rut, telefono, email) VALUES ('Dora', 'Montserrat', '14315965-5', '+56 9 1353 5060', 'rosellosebastian@gmail.com');

-- Datos para la tabla especie
INSERT INTO especie (nombre) VALUES ('Perro');
INSERT INTO especie (nombre) VALUES ('Gato');
INSERT INTO especie (nombre) VALUES ('Conejo');
INSERT INTO especie (nombre) VALUES ('Ave');
INSERT INTO especie (nombre) VALUES ('Hamster');

-- Datos para la tabla raza
INSERT INTO raza (nombre, especie_id) VALUES ('Poodle', 1);
INSERT INTO raza (nombre, especie_id) VALUES ('Labrador', 1);
INSERT INTO raza (nombre, especie_id) VALUES ('Pastor Alemán', 1);
INSERT INTO raza (nombre, especie_id) VALUES ('Beagle', 1);
INSERT INTO raza (nombre, especie_id) VALUES ('Bulldog', 1);
INSERT INTO raza (nombre, especie_id) VALUES ('Persa', 2);
INSERT INTO raza (nombre, especie_id) VALUES ('Siames', 2);
INSERT INTO raza (nombre, especie_id) VALUES ('Maine Coon', 2);
INSERT INTO raza (nombre, especie_id) VALUES ('Europeo', 2);
INSERT INTO raza (nombre, especie_id) VALUES ('Bengalí', 2);
INSERT INTO raza (nombre, especie_id) VALUES ('Sirio', 5);     
INSERT INTO raza (nombre, especie_id) VALUES ('Chino', 5);     
INSERT INTO raza (nombre, especie_id) VALUES ('Cotorra', 4);    

-- Datos para la tabla mascota (usando especie_id y raza_id )
-- Asumimos: 1=Perro, 2=Gato, 4=Ave, 5=Hamster
-- Raza IDs según orden insertado:
-- Perro: Poodle(1), Labrador(2), Pastor Alemán(3), Beagle(4), Bulldog(5)
-- Gato: Persa(6), Siames(7), Maine Coon(8), Europeo(9), Bengalí(10)

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Ligia', 'Hembra', '2012-08-03', 1, 5, 11);

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Luisa', 'Macho', '2016-08-19', 8, 4, 13); 

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Elena', 'Macho', '2019-11-26', 5, 1, 5); 

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Daniel', 'Macho', '2016-05-15', 9, 1, 5); 

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Francisco', 'Hembra', '2019-08-01', 5, 2, 7); 

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Clarisa', 'Hembra', '2014-02-09', 8, 2, 6); 

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Máximo', 'Macho', '2013-04-25', 2, 1, 3); 

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Anastasia', 'Macho', '2018-02-17', 4, 1, 3); 

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Florentino', 'Macho', '2016-08-06', 1, 5, 12);

INSERT INTO mascota (nombre, sexo, fecha_nacimiento, cliente_id, especie_id, raza_id) 
VALUES ('Joan', 'Macho', '2013-01-29', 6, 1, 5);

-- Datos para la tabla comuna
INSERT INTO comuna (nombre) VALUES ('Providencia');
INSERT INTO comuna (nombre) VALUES ('Quilicura');
INSERT INTO comuna (nombre) VALUES ('Independencia');
INSERT INTO comuna (nombre) VALUES ('Lo Prado');
INSERT INTO comuna (nombre) VALUES ('Providencia');
INSERT INTO comuna (nombre) VALUES ('Las Condes');
INSERT INTO comuna (nombre) VALUES ('Maipú');
INSERT INTO comuna (nombre) VALUES ('Pedro Aguirre Cerda');
INSERT INTO comuna (nombre) VALUES ('La Florida');
INSERT INTO comuna (nombre) VALUES ('Independencia');

-- Datos para la tabla empleado
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Georgina', 'Valle', 'Asistente', '10113339-7');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Laura', 'Bayona', 'Asistente', '21508543-3');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Paola', 'Sales', 'Veterinario', '23727967-7');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Ofelia', 'Anguita', 'Administrador', '11529435-4');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Viviana', 'Andrés', 'Asistente', '11426938-9');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Vicente', 'Girón', 'Veterinario', '19386843-0');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Hugo', 'Azorin', 'Asistente', '10221887-2');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Nayara', 'Cardona', 'Veterinario', '14138301-3');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Mariana', 'Pedraza', 'Administrador', '22747932-1');
INSERT INTO empleado (nombre, apellido, rol, rut) VALUES ('Jonatan', 'Santamaría', 'Administrador', '11323329-7');

-- Datos para la tabla producto
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Antiparasitario NexGard', 'Medicamento', 68, 4217.89);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Collar antipulgas', 'Accesorio', 89, 5138.22);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Alimento ProPlan Gato', 'Accesorio', 20, 47057.34);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Shampoo Veterinario', 'Alimento', 29, 32380.8);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Vacuna Rabia', 'Medicamento', 34, 25749.91);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Comedero Inoxidable', 'Accesorio', 89, 37703.68);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Juguete para perro', 'Accesorio', 93, 46747.73);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Arena sanitaria', 'Medicamento', 85, 20105.97);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Transportador plástico', 'Accesorio', 75, 39909.01);
INSERT INTO producto (nombre, tipo, stock, precio) VALUES ('Alimento Champion Dog', 'Accesorio', 60, 17568.2);

-- Datos para la tabla servicio
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Consulta General', 'Consulta general para revisión de salud.', 23885.09);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Vacunación', 'Vacunación anual obligatoria.', 5756.93);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Desparasitación', 'Control de parásitos internos y externos.', 25361.2);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Limpieza Dental', 'Evaluación y limpieza dental.', 12260.57);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Control Geriátrico', 'Atención a domicilio para mascotas senior.', 23272.7);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Atención Domiciliaria', 'Cirugía menor ambulatoria.', 11841.31);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Cirugía Ambulatoria', 'Chequeo pre-operatorio completo.', 21224.29);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Chequeo Preoperatorio', 'Toma de muestras para exámenes.', 14799.08);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Toma de Muestras', 'Revisión de piel y pelaje.', 28933.71);
INSERT INTO servicio (nombre, descripcion, precio) VALUES ('Tratamiento Otitis', 'Tratamiento para otitis oculares y auditivas.', 9361.06);

-- Datos para la tabla cita
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-01-19 20:46:09', 'Domicilio', 8, 10, 2);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-04-28 06:24:16', 'Domicilio', 3, 1, 7);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-05-16 05:17:19', 'Domicilio', 5, 2, 10);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-01-02 01:29:23', 'Domicilio', 10, 2, 6);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-03-05 09:30:23', 'Domicilio', 5, 6, 8);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-05-31 14:12:24', 'Domicilio', 3, 4, 10);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-05-14 22:04:10', 'Domicilio', 3, 1, 6);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-03-09 13:01:35', 'Domicilio', 2, 6, 8);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-04-20 00:16:49', 'Domicilio', 9, 4, 2);
INSERT INTO cita (fecha, tipo, mascota_id, comuna_id, empleado_id) VALUES ('2025-03-15 18:57:05', 'Domicilio', 3, 6, 4);

-- Datos para la tabla venta
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-03-13 14:10:26', 7, 28403.48);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-04-15 16:16:23', 4, 10858.85);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-01-30 17:27:06', 8, 14691.32);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-03-22 09:14:46', 10, 45356.09);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-04-25 08:11:11', 6, 6260.38);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-04-23 02:13:09', 1, 134066.22);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-04-24 04:55:17', 4, 10183.34);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-05-15 01:05:37', 1, 110914.0);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-03-06 10:49:48', 4, 114412.54);
INSERT INTO venta (fecha, cliente_id, total) VALUES ('2025-05-23 11:16:57', 4, 109242.32);

-- Datos para la tabla detalle_venta
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (8.0, 6.0, 4.0, 47808.95);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (1.0, 8.0, 3.0, 29845.26);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (7.0, 1.0, 3.0, 28130.17);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (3.0, 5.0, 4.0, 23053.3);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (4.0, 1.0, 1.0, 41237.32);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (7.0, 7.0, 1.0, 2176.87);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (2.0, 1.0, 4.0, 26299.19);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (7.0, 1.0, 5.0, 22197.95);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (6.0, 3.0, 3.0, 40752.9);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, subtotal) VALUES (8.0, 9.0, 4.0, 2386.01);

-- Datos para la tabla atencion
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (9, 9, 'Se recomienda control en 15 días.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (5, 4, 'Paciente presenta buen estado general.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (8, 7, 'Aplicado antiparasitario oral.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (9, 10, 'Realizada limpieza de oídos.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (1, 8, 'Vacuna administrada sin complicaciones.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (1, 10, 'Se receta analgésico por 3 días.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (2, 2, 'Indicación de dieta especial.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (2, 10, 'Evaluar comportamiento en próxima cita.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (6, 9, 'Realizada revisión bucal completa.');
INSERT INTO atencion (cita_id, servicio_id, observacion) VALUES (1, 8, 'Sin signos de infección aparente.');


-- Datos para la tabla historial_clinico
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (9, '2024-05-23', 'Se observa cojera leve en extremidad posterior derecha.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (6, '2023-08-20', 'Revisión por caída: sin fracturas ni signos de dolor agudo.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (9, '2024-03-15', 'Se detecta gingivitis leve, se recomienda limpieza dental.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (3, '2024-03-03', 'Se realiza control anual, sin hallazgos relevantes.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (6, '2023-09-23', 'Chequeo geriátrico completo, sin alteraciones detectadas.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (5, '2024-06-01', 'Vacunación al día. Se agenda próxima dosis en 1 año.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (5, '2024-07-01', 'Vacunación al día. Se agenda próxima dosis en 1 año.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (9, '2023-11-04', 'Se realiza control anual, sin hallazgos relevantes.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (9, '2024-10-11', 'Consulta por vómitos esporádicos, se indican exámenes.');
INSERT INTO historial_clinico (mascota_id, fecha, descripcion) VALUES (1, '2024-11-12', 'Se observa cojera leve en extremidad posterior derecha.');

-- Datos para la tabla proveedor
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('Distribuidora Mascotín', '14038853-4', '+56 9 4880 1624');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('VeteriVet Ltda.', '16438010-4', '+56 9 7018 6001');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('Agroveterinaria Chile', '13916779-6', '+56 9 9761 8289');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('Suministros Peluditos', '20493808-7', '+56 9 2652 7512');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('Provet Chile', '21064403-6', '+56 9 6702 1768');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('Animalia Distribución', '22501342-4', '+56 9 3704 9297');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('VetExpress', '10212464-0', '+56 9 5479 3756');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('PetMed Spa', '14457427-2', '+56 9 5629 9955');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('VetInsumos', '14868179-7', '+56 9 7330 7523');
INSERT INTO proveedor (nombre, rut, contacto) VALUES ('Animal House Ltda.', '11917551-6', '+56 9 6595 7910');

-- Datos para la tabla ingreso_producto
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (10, 8, 184, '2025-02-22');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (8, 6, 57, '2024-08-17');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (3, 1, 139, '2025-02-16');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (1, 7, 131, '2025-05-19');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (5, 3, 187, '2024-08-21');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (1, 9, 105, '2024-08-23');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (10, 9, 197, '2024-11-21');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (7, 8, 197, '2025-02-15');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (9, 1, 107, '2025-05-25');
INSERT INTO ingreso_producto (producto_id, proveedor_id, cantidad, fecha) VALUES (7, 2, 59, '2024-09-19');


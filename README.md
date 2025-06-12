# 🐾 PetCare - Proyecto Base de Datos Relacional

Este repositorio contiene un proyecto académico que simula el sistema de gestión de una clínica veterinaria llamada **PetCare**. Su objetivo es representar cómo funcionaría una base de datos real para organizar de forma clara la información sobre clientes, mascotas, productos, servicios, ventas y atención clínica.

---

## 📂 Contenido del Repositorio

- `creacion_basededatos.sql`  
  Script completo para la creación de la base de datos **PetCare**, que incluye:
  - Tablas normalizadas con claves primarias y foráneas
  - Vistas SQL útiles para reportes clínicos y comerciales
  - Procedimientos almacenados (ej. registrar citas, actualizar stock)
  - Funciones personalizadas (ej. calcular edad de mascota, total de venta)
  - Triggers para automatización de procesos (ej. restar stock tras venta, registrar historial clínico automático)

- `inserts_petcare_full_chileno.sql`  
  Archivo de inserciones realistas en español y adaptadas al contexto chileno, con datos simulados para:
  - Clientes con RUT y contactos
  - Mascotas con especies y razas
  - Citas, ventas, productos, servicios y proveedores
  - Historial clínico y atenciones

- `consultas sql.sql`  
  Contiene consultas SQL para análisis y reportes, tales como:
  - Clientes con mayores compras
  - Servicios más solicitados
  - Productos vendidos con bajo stock
  - Empleado con más mascotas atendidas
  - Clientes que han comprado más de una vez

---

## 🛠 Tecnologías utilizadas

- **MySQL 8**
- **MySQL Workbench**

---

## 📌 Descripción general

Este sistema permite gestionar de forma ordenada los procesos principales de una clínica veterinaria:

- Registro de clientes, mascotas y proveedores
- Agendamiento de citas por comuna y tipo (domicilio o presencial)
- Control de stock de productos y registros de ingreso
- Ventas y detalle por cliente y producto
- Registro automatizado de atenciones y seguimiento clínico
- Generación de reportes SQL para análisis

---

## 📎 Uso

1. Ejecutar `creacion_basededatos.sql` para crear toda la estructura de la base de datos.
2. Ejecutar `inserts_petcare.sql` para insertar datos de prueba.
3. Utilizar las consultas en `consultas sql.sql` para probar y analizar la información almacenada.

---

## 👨‍💻 Autor

**Manuel Ignacio Otaiza Basaez**  
Estudiante de Ingeniería en Informática - Duoc UC  
GitHub: [@Mnoxie](https://github.com/Mnoxie)

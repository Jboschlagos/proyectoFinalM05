# Actividad SQL | Modelado y Consultas

## PostgreSQL (pgAdmin 4)

Descripción

Este proyecto corresponde a una actividad académica de SQL donde se desarrolla el modelado de una base de datos para un mercado digital, junto con la creación de tablas (DDL), inserción de datos de prueba (DML) y consultas de análisis.

La evidencia se presenta tanto en scripts SQL como en un archivo HTML que permite visualizar el código y los resultados de forma ordenada.

## Contenidos del proyecto
## 1. Modelado Entidad–Relación

Diseño de un mercado digital.

### Entidades principales:

usuarios

productos

inventario

ordenes

order_items

Relaciones y claves foráneas correctamente definidas.

## 2. Script SQL (DDL)

### Incluye:

Creación de tablas

Definición de claves primarias y foráneas

Restricciones (NOT NULL, UNIQUE, DEFAULT)

Comentarios descriptivos en columnas

El script completo se encuentra en:

/assets/sql/mercadodigitalCT.sql


### Y se muestra directamente en el index.html utilizando Prism.js para resaltar la sintaxis SQL.

## 3. Inserción de datos (DML)

Poblamiento de tablas con datos de prueba.

Permite ejecutar y validar las consultas solicitadas.

## 4. Consultas SQL

Entre las consultas realizadas se incluyen:

Total de ventas por período (diciembre 2022)

Total de órdenes

Total de productos vendidos

Subtotales netos y totales con IVA

Desglose de ventas por producto

Uso de:

JOIN

GROUP BY

COUNT

SUM

WITH (CTE)

Subconsultas

## 5. Presentación en HTML

Uso de Bootstrap 5 para el diseño.

Visualización del script SQL directamente desde archivo externo.

Resaltado de sintaxis con Prism.js.

Evidencia visual mediante capturas de:

Diagrama ER

Inserción de datos

Consultas ejecutadas

Tecnologías utilizadas

PostgreSQL

pgAdmin 4

SQL

HTML5

CSS3

Bootstrap 5

Prism.js

Visual Studio Code

Autor

Jorge Bosch
Aprendiz Fullstack JavaScript

Nota

Este repositorio corresponde a una evidencia académica, con fines educativos y de evaluación.

© 2026

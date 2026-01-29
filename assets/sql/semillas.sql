-- ---------------------------
-- SEMILLAS DE DATOS (INSERT)
-- ---------------------------

-- Usuarios
INSERT INTO usuarios (nombre, email) VALUES
('Juan Perez','juan.perez@example.com'),
('Ana Gomez','ana.gomez@example.com'),
('Luis Rodriguez','luis.rodriguez@example.com'),
('Carla Fernandez','carla.fernandez@example.com'),
('Miguel Torres','miguel.torres@example.com');

-- Productos
INSERT INTO productos (nombre, precio, activo) VALUES
('Camiseta Roja',25.50,true),
('Pantalón Azul',40.00,true),
('Zapatos Negros',60.00,true),
('Chaqueta Verde',80.00,true),
('Gorra Blanca',15.00,true),
('Bufanda Gris',20.00,true),
('Calcetines Negros',5.50,true);

-- Inventario
INSERT INTO inventario (id_producto, stock) VALUES
(1,12),
(2,8),
(3,5),
(4,2),
(5,15),
(6,7),
(7,20);

-- Ordenes
INSERT INTO ordenes (id_usuario, fecha, total) VALUES
(1,'2022-12-05',120.50),
(2,'2022-12-10',65.00),
(3,'2022-12-12',95.00),
(1,'2022-12-15',55.50),
(4,'2022-12-20',75.00);

-- Order Items
INSERT INTO order_items (id_orden, id_producto, cantidad, precio_unitario) VALUES
(1,1,2,25.50),
(1,3,1,60.00),
(2,2,1,40.00),
(2,5,1,25.00),
(3,4,1,80.00),
(3,7,3,5.00),
(4,6,2,20.00),
(5,2,1,40.00),
(5,5,1,35.00);
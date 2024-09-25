-- Insert de tabla USUARIO
INSERT INTO USUARIO (NOMBRE, APELLIDO, EMAIL, TELEFONO, CARRITO, CLAVE, FECHA) VALUES
('Juan', 'Perez', 'juan.perez@example.com', '555-1234', 'carrito_juan', 'clave123', CURRENT_TIMESTAMP),
('Maria', 'Lopez', 'maria.lopez@example.com', '555-5678', 'carrito_maria', 'clave456', CURRENT_TIMESTAMP),
('Carlos', 'Gomez', 'carlos.gomez@example.com', '555-8765', 'carrito_carlos', 'clave789', CURRENT_TIMESTAMP),
('Laura', 'Martinez', 'laura.martinez@example.com', '555-2345', 'carrito_laura', 'clave012', CURRENT_TIMESTAMP),
('Pedro', 'Sanchez', 'pedro.sanchez@example.com', '555-3456', 'carrito_pedro', 'clave345', CURRENT_TIMESTAMP),
('Ana', 'Garcia', 'ana.garcia@example.com', '555-4567', 'carrito_ana', 'clave678', CURRENT_TIMESTAMP),
('Luis', 'Hernandez', 'luis.hernandez@example.com', '555-5678', 'carrito_luis', 'clave901', CURRENT_TIMESTAMP),
('Sofia', 'Ramirez', 'sofia.ramirez@example.com', '555-6789', 'carrito_sofia', 'clave234', CURRENT_TIMESTAMP),
('Diego', 'Torres', 'diego.torres@example.com', '555-7890', 'carrito_diego', 'clave567', CURRENT_TIMESTAMP),
('Valeria', 'Flores', 'valeria.flores@example.com', '555-8901', 'carrito_valeria', 'clave890', CURRENT_TIMESTAMP),
('Miguel', 'Rivas', 'miguel.rivas@example.com', '555-9012', 'carrito_miguel', 'clave123', CURRENT_TIMESTAMP),
('Camila', 'Gutierrez', 'camila.gutierrez@example.com', '555-0123', 'carrito_camila', 'clave456', CURRENT_TIMESTAMP),
('Fernando', 'Castro', 'fernando.castro@example.com', '555-2345', 'carrito_fernando', 'clave789', CURRENT_TIMESTAMP),
('Gabriela', 'Jimenez', 'gabriela.jimenez@example.com', '555-3456', 'carrito_gabriela', 'clave012', CURRENT_TIMESTAMP),
('Jorge', 'Diaz', 'jorge.diaz@example.com', '555-4567', 'carrito_jorge', 'clave345', CURRENT_TIMESTAMP);
select * from USUARIO;

-- Insert de tabla PRODUCT_OWNER
INSERT INTO PRODUCT_OWNER (NOMBRE, APELLIDO, EMPRESA, EMAIL, TELEFONO, CLAVE, FECHA) VALUES
('Alberto', 'Fernandez', 'Empresa1', 'alberto.fernandez@empresa1.com', '555-0001', 'clave123', CURRENT_TIMESTAMP),
('Beatriz', 'Mendoza', 'Empresa2', 'beatriz.mendoza@empresa2.com', '555-0002', 'clave456', CURRENT_TIMESTAMP),
('Carmen', 'Ortiz', 'Empresa3', 'carmen.ortiz@empresa3.com', '555-0003', 'clave789', CURRENT_TIMESTAMP),
('Daniel', 'Ruiz', 'Empresa4', 'daniel.ruiz@empresa4.com', '555-0004', 'clave012', CURRENT_TIMESTAMP),
('Elena', 'Rios', 'Empresa5', 'elena.rios@empresa5.com', '555-0005', 'clave345', CURRENT_TIMESTAMP),
('Fabian', 'Diaz', 'Empresa6', 'fabian.diaz@empresa6.com', '555-0006', 'clave678', CURRENT_TIMESTAMP),
('Gloria', 'Vargas', 'Empresa7', 'gloria.vargas@empresa7.com', '555-0007', 'clave901', CURRENT_TIMESTAMP),
('Hugo', 'Lozano', 'Empresa8', 'hugo.lozano@empresa8.com', '555-0008', 'clave234', CURRENT_TIMESTAMP),
('Ines', 'Mora', 'Empresa9', 'ines.mora@empresa9.com', '555-0009', 'clave567', CURRENT_TIMESTAMP),
('Javier', 'Navarro', 'Empresa10', 'javier.navarro@empresa10.com', '555-0010', 'clave890', CURRENT_TIMESTAMP),
('Karla', 'Perez', 'Empresa11', 'karla.perez@empresa11.com', '555-0011', 'clave123', CURRENT_TIMESTAMP),
('Leonardo', 'Castillo', 'Empresa12', 'leonardo.c@empresa12.com', '555-0012', 'clave456', CURRENT_TIMESTAMP),
('Marta', 'Silva', 'Empresa13', 'marta.silva@empresa13.com', '555-0013', 'clave789', CURRENT_TIMESTAMP),
('Nicolas', 'Herrera', 'Empresa14', 'nicolas.herrera@empresa14.com', '555-0014', 'clave012', CURRENT_TIMESTAMP),
('Olga', 'Moreno', 'Empresa15', 'olga.moreno@empresa15.com', '555-0015', 'clave345', CURRENT_TIMESTAMP),
('Magnolia', 'Lopez', 'Empresa16', 'magno16@empresa15.com', '555-0016', 'clave37854', CURRENT_TIMESTAMP);

select * from PRODUCT_OWNER;

-- Insert CATEGORIA DE PRODUCTO
INSERT INTO CATEGORIA (NOMBRE, DESCRIPCION) VALUES
('Electrónica', 'Productos electrónicos y gadgets'),
('Ropa', 'Vestimenta y accesorios de moda'),
('Hogar', 'Artículos para el hogar y decoración'),
('Deportes', 'Equipos y accesorios deportivos'),
('Libros', 'Libros y material de lectura'),
('Juguetes', 'Juguetes y juegos para niños'),
('Automotriz', 'Accesorios y repuestos para autos'),
('Salud', 'Productos de salud y bienestar'),
('Belleza', 'Cosméticos y productos de belleza'),
('Alimentos', 'Productos alimenticios y bebidas'),
('Bebidas', 'Bebidas alcohólicas y no alcohólicas'),
('Mascotas', 'Productos para el cuidado de mascotas'),
('Tecnología', 'Equipos tecnológicos y accesorios'),
('Muebles', 'Muebles para el hogar y oficina'),
('Jardinería', 'Herramientas y productos para jardinería');

select * from CATEGORIA;

-- Insert de tabla PRODUCTO   ---- Producto viene de las inserciones por importación

/* una vez creada las tablas del proyecto al lado de la tabla producto van a aparecer tres iconos
 tocar el tercer icono de una tabla con un rayito
ahi va a aparecer un menu abajo dentro de ese menu estan los icinos de import/export ahi tocar el que tiene la carpeta 
con la flecha y seguir las instruciones dentro de la carpeta del proyecto va a encontrar un archivo
 de nombre Tabla_producto.csv importar esos productos. despues de finalizada chequear si se importo */
select * from producto;


-- script insert de Cart
INSERT INTO CART (ID_PRODUCTO, CANTIDAD, NOMBRE_PRODUCTO, DUENO_CARRITO, FECHA) VALUES
(1, 1, 'Laptop', 1, NOW()),
(2, 2, 'Celular', 1, NOW()),
(3, 3, 'Remera', 2, NOW()),
(4, 1, 'Silla', 3, NOW()),
(5, 2, 'Pelota Futbol', 3, NOW()),
(6, 1, 'Libro', 4, NOW()),
(7, 2, 'Juguete', 5, NOW()),
(8, 1, 'Juguete 2', 5, NOW()),
(9, 3, 'Cerveza', 6, NOW()),
(10, 2, 'Galletitas', 6, NOW()),
(11, 1, 'Tablet', 7, NOW()),
(12, 1, 'Escritorio', 8, NOW()),
(13, 2, 'Mesa', 8, NOW()),
(14, 1, 'Silla', 9, NOW()),
(15, 2, 'Vitaminas', 10, NOW()),
(1, 1, 'Laptop', 11, NOW()),
(2, 1, 'Celular', 11, NOW()), 
(3, 1, 'Remera', 12, NOW()),
(4, 1, 'Silla', 12, NOW());

SELECT * FROM CART;

-- insert de chat entre usuarios
INSERT INTO CHAT (USER_ID, MENSAJES, ID_RECEPTOR) VALUES
(1, 'Hola, ¿cómo estás?', 1),
(2, 'Hola, ¿tienes disponible el producto?', 2),
(3, 'Me interesa el artículo que vendes.', 2),
(4, '¿Puedes enviar más fotos del producto?', 4),
(5, '¿Haces envíos a domicilio?', 5),
(5, '¿Aceptas devoluciones?', 5),
(5, '¿Cuánto cuesta el envío?', 5),
(8, '¿Es nuevo el producto?', 6),
(3, '¿Puedo pagar con tarjeta de crédito?', 2),
(10, '¿Tienes más productos similares?', 10);

SELECT * FROM CHAT;

-- insert ticket_compra
INSERT INTO ticket_compra (CARRITO, DUENO_CARRITO, FECHA) VALUES
(1, 1, NOW()),
(2, 1, NOW()),
(3, 2, NOW()),
(4, 3, NOW()),
(5, 3, NOW()),
(6, 4, NOW()),
(7, 5, NOW()),
(8, 5, NOW()),
(9, 6, NOW()),
(10, 6, NOW()),
(11, 7, NOW()),
(12, 8, NOW()),
(13, 8, NOW()),
(14, 9, NOW()),
(15, 10, NOW()),
(16, 11, NOW()),
(17, 11, NOW()),
(18, 12, NOW());

SELECT * FROM TICKET_COMPRA;

-- insert de orden
INSERT INTO ORDEN (ID_USER, FECHA, TOTAL, ESTADO) VALUES
(1, '2024-07-01 12:03:33', 2000.00, 'completado'),
(2, '2024-07-01 12:03:33', 20.00, 'completado'),
(3, '2024-07-01 12:03:33', 125.00, 'completado'),
(4, '2024-07-01 12:03:33', 30.00, 'completado'),
(5, '2024-07-01 12:03:33', 15.00, 'completado'),
(6, '2024-07-01 12:03:33', 15.00, 'completado'),
(7, '2024-07-01 12:03:33', 300.00, 'completado'),
(8, '2024-07-01 12:03:33', 320.00, 'completado'),
(9, '2024-07-01 12:03:33', 90.00, 'completado'),
(10, '2024-07-01 12:03:33', 20.00, 'completado'),
(11, '2024-07-01 12:03:33', 2000.00, 'completado'),
(12, '2024-07-01 12:03:33', 120.00, 'completado');

SELECT * FROM ORDEN;

INSERT INTO ORDEN_DETALLE (ID_ORDEN, ID_PRODUCTO, CANTIDAD, PRECIO_UNITARIO) VALUES
(1, 1, 1, 1200.00), 
(1, 2, 2, 800.00), 
(2, 3, 1, 20.00),
(3, 4, 1, 100.00),
(3, 5, 1, 25.00), 
(4, 6, 1, 15.00), 
(5, 7, 1, 30.00),
(5, 8, 1, 15.00),
(6, 9, 1, 10.00), 
(6, 10, 1, 5.00),
(7, 11, 1, 300.00), 
(8, 12, 1, 120.00), 
(8, 13, 1, 200.00), 
(9, 14, 1, 90.00),
(10, 15, 1, 20.00),
(11, 1, 1, 1200.00),
(11, 2, 1, 800.00), 
(12, 3, 1, 20.00),
(12, 4, 1, 100.00);

SELECT * FROM ORDEN_DETALLE;
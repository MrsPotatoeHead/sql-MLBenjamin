use tp_mlbenjamin;
-- Chequeo el estado de las variables 
SELECT @@autocommit;
SELECT @@FOREIGN_KEY_CHECKS;
 
-- Seteo todas las variables a 0 para simular el remoto
SET @@autocommit = 0;
SET  @@FOREIGN_KEY_CHECKS = 0;
SET SQL_SAFE_UPDATES = 0;

-- Tabla 1 que voy a usar  PRODUCT_OWNER
SELECT * FROM PRODUCT_OWNER;

-- Delete de la tabla dentro del START TRANSACTION
START TRANSACTION ;
DELETE  FROM PRODUCT_OWNER WHERE ID_PRODUCT_OWNER = 4 ;
DELETE  FROM PRODUCT_OWNER WHERE ID_PRODUCT_OWNER = 7 ;
DELETE  FROM PRODUCT_OWNER WHERE ID_PRODUCT_OWNER = 9 ;

-- Me fijo si se elimiaron
SELECT * FROM PRODUCT_OWNER;
SELECT * FROM PRODUCT_OWNER WHERE ID_PRODUCT_OWNER  = 4 ; 
SELECT * FROM PRODUCT_OWNER WHERE ID_PRODUCT_OWNER  = 7 ; 
SELECT * FROM PRODUCT_OWNER WHERE ID_PRODUCT_OWNER  = 9 ; 

-- ROLLBACK ;
-- COMMIT ;

-- Tabla 2 que voy a usar PRODUCTO
SELECT * FROM PRODUCTO;

-- INSERT de 8 registros nuevos con Start Transaction

START TRANSACTION ;

INSERT INTO PRODUCTO 
VALUES (21, 'Jinete ', 'Libro terror', 10, 'jinwtw.jpg', 500, 9, 5);

INSERT INTO PRODUCTO 
VALUES (22, 'El Anillo', 'Libro fantasía', 15, 'senordelosanillos.jpg', 700, 3, 5);

INSERT INTO PRODUCTO
VALUES (23, 'Juego Tonto', 'Libro fantasía', 20, 'juegodetronos.jpg', 600, 6, 5);

INSERT INTO PRODUCTO 
VALUES (24, '1984', 'Libro distopía', 8, '1984.jpg', 300, 4, 2);

-- SAVEPOINT 1
 SAVEPOINT sp1 ;

INSERT INTO PRODUCTO 
VALUES (25, 'Cien Soledad', 'Libro novela', 12, 'cienañosdesoledad.jpg', 350, 5, 3);

INSERT INTO PRODUCTO 
VALUES (26, 'Laptop Dell', 'Computadora portátil', 5, 'laptopdell.jpg', 1500, 1, 1);

INSERT INTO PRODUCTO 
VALUES (27, 'Camiseta Nike', 'Camiseta deportiva', 30, 'camisetanike.jpg', 50, 2, 4);

INSERT INTO PRODUCTO 
VALUES (28, 'Muñeca Barbie', 'Muñeca de juguete', 25, 'muñecabarbie.jpg', 20, 7, 6);

-- SAVEPOINT 2
 SAVEPOINT sp2 ;
 
-- RELEASE SAVEPOINT sp1;
 
-- ROLLBACK 
 
-- COMMIT 
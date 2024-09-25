use tp_mlbenjamin;


drop schema if exists RRHH_EJEMPLO ;
create schema if not exists RRHH_EJEMPLO ;

 

-- view de la tabla PRODUCTO para trabajar y proteger los datos propios antes de modificarlos.
CREATE OR REPLACE VIEW VW_PRODUCTOS AS (select * from producto);

-- view en schema de tercero RRHH_EJEMPLO de: 
-- Los propietarios de los productos, sus productos correspondientes con la categoria a la que pertenece incluso los que no tienen productos
CREATE OR REPLACE VIEW RRHH_EJEMPLO.VW_PRODUCTOS_DUEÑOS_Y_SU_CATEGORIA AS (
SELECT
    CONCAT(po.NOMBRE, ' ', po.APELLIDO) AS NOMBRE_COMPLETO, po.EMPRESA, po.EMAIL,
    p.NOMBRE_PRODUCTO, p.PRECIO,
    c.NOMBRE AS NOMBRE_CATEGORIA
FROM PRODUCT_OWNER AS po LEFT JOIN PRODUCTO AS p
ON po.ID_PRODUCT_OWNER = p.DUENO_PRODUCTO
LEFT JOIN CATEGORIA AS c ON p.ID_CATEGORIA = c.ID_CATEGORIA
);

-- view en schema de tercero RRHH_EJEMPLO de:
-- consulta de los 3 productos que mas se compraron 
CREATE OR REPLACE VIEW RRHH_EJEMPLO.VW_3_PRODUCTOS_MAS_COMPRADOS AS (
SELECT 
    p.NOMBRE_PRODUCTO,
    SUM(od.CANTIDAD) AS TOTAL_CANTIDAD
FROM 
    ORDEN_DETALLE od JOIN PRODUCTO p 
    ON od.ID_PRODUCTO = p.ID_PRODUCTO
	GROUP BY  p.NOMBRE_PRODUCTO
	ORDER BY TOTAL_CANTIDAD DESC
	LIMIT 3
);


-- View en schema de tercero RRHH_EJEMPLO de:
-- los productos que compraron los usuarios
CREATE OR REPLACE VIEW RRHH_EJEMPLO.VW_PRODUCTOS_MAS_COMPRADOS_POR_USUARIO AS (
SELECT 
	CONCAT(u.NOMBRE, ' ', u.APELLIDO) AS NOMBRE_COMPLETO,
    u.EMAIL,
    o.FECHA AS FECHA_ORDEN,
    p.NOMBRE_PRODUCTO,
    od.CANTIDAD,
    (od.CANTIDAD * od.PRECIO_UNITARIO) AS TOTAL_PRODUCTO
FROM 
    USUARIO AS u
JOIN 
    ORDEN  AS o ON u.ID_USER = o.ID_USER
JOIN 
    ORDEN_DETALLE AS od ON o.ID_ORDEN = od.ID_ORDEN
JOIN 
    PRODUCTO AS p ON od.ID_PRODUCTO = p.ID_PRODUCTO
ORDER BY 
    u.NOMBRE, o.FECHA
    );
    
-- view en schema de tercero RRHH_EJEMPLO de:
-- encontrar quienes son los 2 usuarios que mas llevan gastado en compras en la base
CREATE OR REPLACE VIEW RRHH_EJEMPLO.VW_2_USUARIOS_CON_MAS_COMPRARAS AS (
SELECT 
    u.ID_USER,
    CONCAT(u.NOMBRE, ' ', u.APELLIDO) AS NOMBRE_COMPLETO,
    u.EMAIL,
    SUM(od.CANTIDAD * od.PRECIO_UNITARIO) AS TOTAL_COMPRADO
FROM 
    USUARIO u
JOIN 
    ORDEN o ON u.ID_USER = o.ID_USER
JOIN 
    ORDEN_DETALLE od ON o.ID_ORDEN = od.ID_ORDEN
GROUP BY 
    u.ID_USER, u.NOMBRE, u.APELLIDO, u.EMAIL
ORDER BY 
    TOTAL_COMPRADO DESC
LIMIT 2
);

-- view en schema de tercero RRHH_EJEMPLO de:
-- los carritos comprados en el dia de hoy
CREATE OR REPLACE VIEW RRHH_EJEMPLO.VW_CARRITOS_COMPRADOS_HOY AS (
SELECT 
    ID_CART,
    ID_PRODUCTO,
    CANTIDAD,
    NOMBRE_PRODUCTO,
    DUENO_CARRITO,
    FECHA
FROM 
    CART
WHERE 
    DATE(FECHA) = CURRENT_DATE
    );

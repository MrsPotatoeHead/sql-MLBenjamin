--  FUNCIONES --
-- Funcion para obtener el promedio de los precios por categoria de producto- utiliza la tabla PRODUCTO
DROP FUNCTION IF EXISTS  FN_PROMEDIO_PRECIO;

DELIMITER //
CREATE FUNCTION FN_PROMEDIO_PRECIO(cat_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE v_precio_promedio DECIMAL(10, 2);

    SELECT AVG(p.PRECIO)
    INTO v_precio_promedio
    FROM PRODUCTO AS p
    WHERE p.ID_CATEGORIA = cat_id;

    RETURN v_precio_promedio;
END//
DELIMITER ;

-- CATEORIA 3-5-13 TIENE PRODUCTOS--

SELECT FN_PROMEDIO_PRECIO(5);


-- Funcion para obtener el producto mas vendido entre fechas especificadas-- utiliza las tablas de ORDEN Y ORDEN DETALLE

DROP FUNCTION IF EXISTS  FN_PRODUCTO_MAS_VENDIDO;

DELIMITER //
CREATE FUNCTION FN_PRODUCTO_MAS_VENDIDO(inicio DATE, fin DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_max_product_id INT;

    SELECT od.ID_PRODUCTO
    INTO v_max_product_id
    FROM ORDEN AS o
    JOIN ORDEN_DETALLE AS od ON o.ID_ORDEN = od.ID_ORDEN
    WHERE o.FECHA BETWEEN inicio AND fin
    GROUP BY od.ID_PRODUCTO
    ORDER BY SUM(od.CANTIDAD) DESC
    LIMIT 1;

    RETURN v_max_product_id;
END//
DELIMITER ;

SELECT FN_PRODUCTO_MAS_VENDIDO('2024-07-01', '2024-07-07') AS ID_PRODUCTO_MAS_VENDIDO;

-- aca busca por el id el nombre del producto completo
select * from producto where id_producto = 2;
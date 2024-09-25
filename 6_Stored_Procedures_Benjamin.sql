USE tp_mlbenjamin;

-- Stored Procedures para segunda entrega
-- 1 SP procedimiento que permite ingresar el nombre de la tabla  a la que se quiere ordenar , parametro de la columana por la que se quiere ordenar y 
-- si se ordena de manera ascendente o descendente. 
-- este procedimento crea una tabla temporal para poder leerla despues y eliminarla despues de su lectura

DROP PROCEDURE IF EXISTS SP_ORDENAMIENTO;

DELIMITER &&
CREATE PROCEDURE SP_ORDENAMIENTO(
    IN p_tabla VARCHAR(50),
    IN p_columna VARCHAR(25),
    IN p_ascdec VARCHAR(10)
)
BEGIN
    SET @p_salida = CONCAT('CREATE TEMPORARY TABLE temp_result AS SELECT * FROM ', p_tabla, ' ORDER BY ', p_columna, ' ', p_ascdec);
    PREPARE runSQL FROM @p_salida;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END&&
DELIMITER ;

-- Llamardo parametros 1-nombre de tabla 2-nombre de la columna por el que ordeno 3-ascendente ASC descenete DESC
CALL SP_ORDENAMIENTO('PRODUCTO', 'NOMBRE_PRODUCTO', 'DESC');

-- Ver el resultado temporal
SELECT * FROM temp_result;

-- Eliminacion tabla temporal-- se puede dulplicar antes de borrar si interesa
DROP TEMPORARY TABLE IF EXISTS temp_result;

-- Procedimiento de insercion de Usuario en la tabla USUARIO
DROP PROCEDURE IF EXISTS SP_INSERTAR_USUARIO;

DELIMITER &&
CREATE PROCEDURE SP_INSERTAR_USUARIO(
    IN p_nombre VARCHAR(15),
    IN p_apellido VARCHAR(15),
    IN p_email VARCHAR(30),
    IN p_telefono VARCHAR(15),
    IN p_carrito VARCHAR(30),
    IN p_clave VARCHAR(15)
)
BEGIN
    INSERT INTO USUARIO (NOMBRE, APELLIDO, EMAIL, TELEFONO, CARRITO, CLAVE, FECHA)
    VALUES (p_nombre, p_apellido, p_email, p_telefono, p_carrito, p_clave, NOW());
END&&
DELIMITER ;

-- LLamado sin Id porque se autogenera y la fecha tambien se autogenera
-- orden de llamado - NOMBRE, APELLIDO, EMAIL, TELEFONO, CARRITO, CLAVE 
CALL SP_INSERTAR_USUARIO('Elisa', 'Mendez', 'elisa.mendez@example.com', '1234567890', 'Elisa_Carrito', 'clave8759');

-- Ver si se agrego
SELECT *  FROM USUARIO;
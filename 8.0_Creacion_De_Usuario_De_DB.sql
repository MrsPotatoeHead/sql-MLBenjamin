-- Script de creacion de Usuario externo 
-- USA EL SCHEMA SEL SISTEMA MYSQL, para generar usuario nuevo
use mysql ;

-- ----------------- USUARIO 1 -----------------------------
-- CREATE- para crear el usuario nuevo en la base de datos
-- USUARIO: User_1_Benjamin CLAVE: 123456 

CREATE USER 'User_1_Benjamin'@'localhost' IDENTIFIED BY '123456';

-- SHOW GRANTS muestra los permisos 
SHOW GRANTS FOR 'User_1_Benjamin'@'localhost';

-- GRANT da los permisos necesarios para el proyecto y la tabla necesaria
GRANT SELECT ON tp_mlbenjamin.orden_detalle TO 'User_1_Benjamin'@'localhost';  

-- refesco los provilegios y los vuelvo a consultar
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'User_1_Benjamin'@'localhost';

-- ----------------- USUARIO 2 -----------------------------

-- CREATE- para crear el usuario nuevo en la base de datos
-- USUARIO: User_2_Benjamin CLAVE:abcdef
CREATE USER 'User_2_Benjamin'@'localhost' IDENTIFIED BY 'abcdef' ;
-- SHOW GRANTS muestra los permisos del usuario 2
SHOW GRANTS FOR 'User_2_Benjamin'@'localhost';

-- GRANT da los permisos necesarios para el proyecto y la tabla necesaria
GRANT SELECT, INSERT, UPDATE ON tp_mlbenjamin.producto TO 'User_2_Benjamin'@'localhost'; 

-- refesco los provilegios y los vuelvo a consultar
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'User_2_Benjamin'@'localhost';



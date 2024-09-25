-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tp_mlbenjamin
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (39,1,1,'Laptop',1,'2024-07-01 15:03:33'),(40,2,2,'Celular',1,'2024-07-01 15:03:33'),(41,3,3,'Remera',2,'2024-07-01 15:03:33'),(42,4,1,'Silla',3,'2024-07-01 15:03:33'),(43,5,2,'Pelota Futbol',3,'2024-07-01 15:03:33'),(44,6,1,'Libro',4,'2024-07-01 15:03:33'),(45,7,2,'Juguete',5,'2024-07-01 15:03:33'),(46,8,1,'Juguete 2',5,'2024-07-01 15:03:33'),(47,9,3,'Cerveza',6,'2024-07-01 15:03:33'),(48,10,2,'Galletitas',6,'2024-07-01 15:03:33'),(49,11,1,'Tablet',7,'2024-07-01 15:03:33'),(50,12,1,'Escritorio',8,'2024-07-01 15:03:33'),(51,13,2,'Mesa',8,'2024-07-01 15:03:33'),(52,14,1,'Silla',9,'2024-07-01 15:03:33'),(53,15,2,'Vitaminas',10,'2024-07-01 15:03:33'),(54,1,1,'Laptop',11,'2024-07-01 15:03:33'),(55,2,1,'Celular',11,'2024-07-01 15:03:33'),(56,3,1,'Remera',12,'2024-07-01 15:03:33'),(57,4,1,'Silla',12,'2024-07-01 15:03:33');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Electrónica','Productos electrónicos y gadgets'),(2,'Ropa','Vestimenta y accesorios de moda'),(3,'Hogar','Artículos para el hogar y decoración'),(4,'Deportes','Equipos y accesorios deportivos'),(5,'Libros','Libros y material de lectura'),(6,'Juguetes','Juguetes y juegos para niños'),(7,'Automotriz','Accesorios y repuestos para autos'),(8,'Salud','Productos de salud y bienestar'),(9,'Belleza','Cosméticos y productos de belleza'),(10,'Alimentos','Productos alimenticios y bebidas'),(11,'Bebidas','Bebidas alcohólicas y no alcohólicas'),(12,'Mascotas','Productos para el cuidado de mascotas'),(13,'Tecnología','Equipos tecnológicos y accesorios'),(14,'Muebles','Muebles para el hogar y oficina'),(15,'Jardinería','Herramientas y productos para jardinería');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,1,'Hola, ¿cómo estás?',1),(2,2,'Hola, ¿tienes disponible el producto?',2),(3,3,'Me interesa el artículo que vendes.',2),(4,4,'¿Puedes enviar más fotos del producto?',4),(5,5,'¿Haces envíos a domicilio?',5),(6,5,'¿Aceptas devoluciones?',5),(7,5,'¿Cuánto cuesta el envío?',5),(8,8,'¿Es nuevo el producto?',6),(9,3,'¿Puedo pagar con tarjeta de crédito?',2),(10,10,'¿Tienes más productos similares?',10);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1,1,'2024-07-01 15:03:33',2000.00,'completado'),(2,2,'2024-07-01 15:03:33',20.00,'completado'),(3,3,'2024-07-01 15:03:33',125.00,'completado'),(4,4,'2024-07-01 15:03:33',30.00,'completado'),(5,5,'2024-07-01 15:03:33',15.00,'completado'),(6,6,'2024-07-01 15:03:33',15.00,'completado'),(7,7,'2024-07-01 15:03:33',300.00,'completado'),(8,8,'2024-07-01 15:03:33',320.00,'completado'),(9,9,'2024-07-01 15:03:33',90.00,'completado'),(10,10,'2024-07-01 15:03:33',20.00,'completado'),(11,11,'2024-07-01 15:03:33',2000.00,'completado'),(12,12,'2024-07-01 15:03:33',120.00,'completado');
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orden_detalle`
--

LOCK TABLES `orden_detalle` WRITE;
/*!40000 ALTER TABLE `orden_detalle` DISABLE KEYS */;
INSERT INTO `orden_detalle` VALUES (1,1,1,1,1200.00),(2,1,2,2,800.00),(3,2,3,1,20.00),(4,3,4,1,100.00),(5,3,5,1,25.00),(6,4,6,1,15.00),(7,5,7,1,30.00),(8,5,8,1,15.00),(9,6,9,1,10.00),(10,6,10,1,5.00),(11,7,11,1,300.00),(12,8,12,1,120.00),(13,8,13,1,200.00),(14,9,14,1,90.00),(15,10,15,1,20.00),(16,11,1,1,1200.00),(17,11,2,1,800.00),(18,12,3,1,20.00),(19,12,4,1,100.00);
/*!40000 ALTER TABLE `orden_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_owner`
--

LOCK TABLES `product_owner` WRITE;
/*!40000 ALTER TABLE `product_owner` DISABLE KEYS */;
INSERT INTO `product_owner` VALUES (1,'Alberto','Fernandez','Empresa1','alberto.fernandez@empresa1.com','555-0001','clave123','2024-07-01 00:13:02'),(2,'Beatriz','Mendoza','Empresa2','beatriz.mendoza@empresa2.com','555-0002','clave456','2024-07-01 00:13:02'),(3,'Carmen','Ortiz','Empresa3','carmen.ortiz@empresa3.com','555-0003','clave789','2024-07-01 00:13:02'),(4,'Daniel','Ruiz','Empresa4','daniel.ruiz@empresa4.com','555-0004','clave012','2024-07-01 00:13:02'),(5,'Elena','Rios','Empresa5','elena.rios@empresa5.com','555-0005','clave345','2024-07-01 00:13:02'),(6,'Fabian','Diaz','Empresa6','fabian.diaz@empresa6.com','555-0006','clave678','2024-07-01 00:13:02'),(7,'Gloria','Vargas','Empresa7','gloria.vargas@empresa7.com','555-0007','clave901','2024-07-01 00:13:02'),(8,'Hugo','Lozano','Empresa8','hugo.lozano@empresa8.com','555-0008','clave234','2024-07-01 00:13:02'),(9,'Ines','Mora','Empresa9','ines.mora@empresa9.com','555-0009','clave567','2024-07-01 00:13:02'),(10,'Javier','Navarro','Empresa10','javier.navarro@empresa10.com','555-0010','clave890','2024-07-01 00:13:02'),(11,'Karla','Perez','Empresa11','karla.perez@empresa11.com','555-0011','clave123','2024-07-01 00:13:02'),(12,'Leonardo','Castillo','Empresa12','leonardo.c@empresa12.com','555-0012','clave456','2024-07-01 00:13:02'),(13,'Marta','Silva','Empresa13','marta.silva@empresa13.com','555-0013','clave789','2024-07-01 00:13:02'),(14,'Nicolas','Herrera','Empresa14','nicolas.herrera@empresa14.com','555-0014','clave012','2024-07-01 00:13:02'),(15,'Olga','Moreno','Empresa15','olga.moreno@empresa15.com','555-0015','clave345','2024-07-01 00:13:02'),(16,'Magnolia','Lopez','Empresa16','magno16@empresa15.com','555-0016','clave37854','2024-07-01 00:13:02');
/*!40000 ALTER TABLE `product_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Laptop','Laptop de alta gama ',10,'laptop.jpg',1200,1,13),(2,'Celular','Celular ultima gen',25,'celular.jpg',950,1,13),(3,'Remera','Remera deportiva',50,'remera.jpg',20,2,4),(4,'Silla','Silla ergonomica',15,'silla.jpg',100,4,3),(5,'Pelota Futbol','Pelota de futbol',30,'pelota.jpg',25,5,4),(6,'Libro','Libro de aventura',40,'libro.jpg',15,3,5),(7,'Juguete','Juguete de niÃ±o',20,'juguete.jpg',30,5,6),(8,'Juguete 2','Juguete de niÃ±o 2',15,'juguete2.jpg',15,5,6),(9,'Cerveza','Cerveza artesanal',60,'cerveza.jpg',10,6,11),(10,'Galletitas','Galletitas de chocolate',50,'galletitas.jpg',5,6,10),(11,'Tablet ','tablet 10\'\'',20,'tablet.jpg',300,1,13),(12,'Escritorio','Escritoriode madera',10,'escri.jpg',120,8,14),(13,'Mesa ','Mesa nordica',5,'mesa.jpg',200,8,14),(14,'Silla','silla comedor',16,'sillacom.jpg',90,8,14),(15,'Vitaminas','Multivitaminico',25,'vitaminas.jpg',20,10,8),(16,'Harry Potter','libro de aventura',10,'harrypotter.jpg',500,10,5),(17,'sabanas','sabanas de cama',10,'sabanas.jpg',50,9,3),(18,'Harry potter','libro aventura',10,'harrypotter.jpg',500,9,10),(19,'Harry potter','libro aventura',10,'harrypotter.jpg',500,9,5),(20,'camisa','camisa rayada bordeu',10,'camisa.jpg',150,7,7);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ticket_compra`
--

LOCK TABLES `ticket_compra` WRITE;
/*!40000 ALTER TABLE `ticket_compra` DISABLE KEYS */;
INSERT INTO `ticket_compra` VALUES (1,39,1,'2024-07-01 15:21:30'),(2,40,1,'2024-07-01 15:21:30'),(3,41,2,'2024-07-01 15:21:30'),(4,42,3,'2024-07-01 15:21:30'),(5,43,3,'2024-07-01 15:21:30'),(6,44,4,'2024-07-01 15:21:30'),(7,45,5,'2024-07-01 15:21:30'),(8,46,5,'2024-07-01 15:21:30'),(9,47,6,'2024-07-01 15:21:30'),(10,48,6,'2024-07-01 15:21:30'),(11,49,7,'2024-07-01 15:21:30'),(12,50,8,'2024-07-01 15:21:30'),(13,51,8,'2024-07-01 15:21:30'),(14,52,9,'2024-07-01 15:21:30'),(15,53,10,'2024-07-01 15:21:30'),(16,54,11,'2024-07-01 15:21:30'),(17,55,11,'2024-07-01 15:21:30'),(18,56,12,'2024-07-01 15:21:30'),(19,57,12,'2024-07-01 15:21:30');
/*!40000 ALTER TABLE `ticket_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan','Perez','juan.perez@example.com','555-12345','carrito_juan','clave123','2024-07-01 00:12:42'),(2,'Maria','Lopez','maria.lopez@example.com','555-5678','carrito_maria','clave456','2024-07-01 00:12:42'),(3,'Carlos','Gomez','carlos.gomez@example.com','555-8765','carrito_carlos','clave789','2024-07-01 00:12:42'),(4,'Laura','Martinez','laura.martinez@example.com','555-2345','carrito_laura','clave012','2024-07-01 00:12:42'),(5,'Pedro','Sanchez','pedro.sanchez@example.com','555-3456','carrito_pedro','clave345','2024-07-01 00:12:42'),(6,'Ana','Garcia','ana.garcia@example.com','555-4567','carrito_ana','clave678','2024-07-01 00:12:42'),(7,'Luis','Hernandez','luis.hernandez@example.com','555-5678','carrito_luis','clave901','2024-07-01 00:12:42'),(8,'Sofia','Ramirez','sofia.ramirez@example.com','555-6789','carrito_sofia','clave234','2024-07-01 00:12:42'),(9,'Diego','Torres','diego.torres@example.com','555-7890','carrito_diego','clave567','2024-07-01 00:12:42'),(10,'Valeria','Flores','valeria.flores@example.com','555-8901','carrito_valeria','clave890','2024-07-01 00:12:42'),(11,'Miguel','Rivas','miguel.rivas@example.com','555-9012','carrito_miguel','clave123','2024-07-01 00:12:42'),(12,'Camila','Gutierrez','camila.gutierrez@example.com','555-0123','carrito_camila','clave456','2024-07-01 00:12:42'),(13,'Fernando','Castro','fernando.castro@example.com','555-2345','carrito_fernando','clave789','2024-07-01 00:12:42'),(14,'Gabriela','Jimenez','gabriela.jimenez@example.com','555-3456','carrito_gabriela','clave012','2024-07-01 00:12:42'),(15,'Jorge','Diaz','jorge.diaz@example.com','555-4567','carrito_jorge','clave345','2024-07-01 00:12:42'),(16,'Elisa','Mendez','elisa.mendez@example.com','1234567890','Elisa_Carrito','clave8759','2024-07-10 02:37:55');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 20:41:23

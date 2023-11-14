-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaventa
-- ------------------------------------------------------
-- Server version	8.0.31
USE sistemaventa;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` int NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (19,125,'Franciso',33145023,'arcos sur','jkis263','2023-04-17 20:41:34'),(24,452,'llourdes  del castillo',33143053,'san miguel','kackdjkii','2023-04-17 21:13:48'),(26,25,'cristina ',36242902,'san miguel','gamba25','2023-04-20 22:48:55'),(27,25,'cristina garza ',36242902,'san miguel','gamba25','2023-04-20 22:49:07'),(29,25,'cristina garza',362429020,'san miguel','gamba25','2023-04-23 02:31:07'),(30,25,'cristina garza',362429020,'san miguel','gamba25','2023-04-23 02:31:21'),(33,45245,'juan perez',3145065,'tuzania 55','cacjdjdjjf','2023-05-17 08:55:14');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `telefono` int NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'Refaccionaria \"el mencho\"','cd24',33145260,'arco escoces','cacfhjhh');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cod_pro` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_venta` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (1,0,5,950.00,0),(2,0,6,950.00,0),(3,0,6,950.00,0),(4,0,5,950.00,0),(5,0,1,950.00,0),(6,4560,4,950.00,0),(7,4560,5,950.00,0),(8,4560,2,950.00,1),(9,4520,2,145.50,13),(10,4560,5,4750.00,14),(11,460,50,1600.00,15),(12,4560,5,4750.00,16),(13,4560,5,4750.00,17),(14,560,50,2250.00,18),(15,4560,6,5700.00,22),(16,4560,1,950.00,23),(17,4560,2,1900.00,24),(18,4560,2,1900.00,25),(19,4560,1,950.00,26),(20,2560,1,45.00,27),(21,2560,1,45.00,28),(22,2560,1,45.00,29),(23,4560,1,950.00,30),(24,2560,1,45.00,31),(25,2560,5,225.00,32),(26,2560,2,90.00,33),(27,2560,2,90.00,34),(28,2560,5,225.00,35),(29,4560,5,4750.00,36),(30,4560,5,4750.00,37),(31,4560,5,4750.00,38),(32,460,4,128.00,39),(33,4520,5,727.50,40),(34,4520,5,727.50,41),(35,4560,35,33250.00,42),(36,4560,2,1900.00,43),(37,460,4,128.00,44),(38,4500,25,1250.00,45),(39,4560,2,1900.00,46),(40,60524,1,2500.00,47),(41,560,5,225.00,48),(42,4560,5,4750.00,49);
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img_productos`
--

DROP TABLE IF EXISTS `img_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `img_productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `nombre_archivo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `img_productos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img_productos`
--

LOCK TABLES `img_productos` WRITE;
/*!40000 ALTER TABLE `img_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `img_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_venta` (`id_venta`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (2,'4520','volante','Bujias \"el pancho\"',0,145.50,'2023-04-23 00:48:46'),(3,'4560','llantas','adelco',55,950.00,'2023-04-23 22:32:44'),(4,'460','bujias','Bujias \"el pancho\"',42,32.00,'2023-04-23 23:11:58'),(5,'4560','pulimento','pulimentos \"gomez\"',55,45.00,'2023-04-23 23:48:09'),(6,'4580','brillo para piel','pulimentos \"gomez\"',15,40.00,'2023-04-23 23:50:49'),(7,'4560','aceite','adelco',55,60.00,'2023-04-26 18:32:47'),(10,'560','acete 1 lt sintetico','Aceites Industriales',45,45.00,'2023-05-09 10:05:36'),(17,'4560','mangueras','adelco',55,200.00,'2023-05-15 20:59:09'),(18,'60524','espejo delantero','adelco',4,2500.00,'2023-05-15 21:26:13'),(20,'45200','buje de palanca','adelco',8,45.00,'2023-05-16 09:31:31'),(21,'4500','bujias titanio','Bujias \"el pancho\"',15,50.00,'2023-05-17 10:03:54');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ruc` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` int NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (2,122,'Bujias \"el pancho\"',33150,'san migue','cacfgg','2023-04-17 23:34:46'),(4,12565,'adelco',3312560,'arco benavete','cachjnn55','2023-04-22 22:36:16'),(5,52150,'pulimentos \"gomez\"',33205060,'arco del triunfo','publo20450','2023-04-23 23:46:29'),(6,1223,'llantas orozco',3315000,'san marcos','cacfgg','2023-04-24 07:29:15'),(7,125450,'Aceites Industriales',31430590,'el vijia','cacjjss','2023-05-09 10:01:57'),(8,155544,'pancho bujias',33254,'arcos','cachhh3','2023-05-17 10:03:22');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `tipo_tarjeta` varchar(50) NOT NULL,
  `numero_tarjeta` varchar(16) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `nombre_titular` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `tarjetas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (3,'Fernando','vicentegallo96@gmail.com','123456','Administrador'),(4,'ricardo','ricardo@gmail.com','123456','Asistente'),(10,'Cristina','cris.garza@gmail.com','123456','Asistente');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_en_linea`
--

DROP TABLE IF EXISTS `usuarios_en_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_en_linea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `fecha_entrada` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_salida` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `usuarios_en_linea_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_en_linea`
--

LOCK TABLES `usuarios_en_linea` WRITE;
/*!40000 ALTER TABLE `usuarios_en_linea` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_en_linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(100) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (38,'cristina ','Fernando',4750.00,'2023-05-13 13:11:35'),(39,'Franciso','Fernando',128.00,'14/05/2023'),(40,'cristina ','Cristina',727.50,'15/05/2023'),(41,'cristina ','Fernando',727.50,'16/05/2023'),(42,'cristina ','Fernando',33250.00,'16/05/2023'),(43,'cristina ','',1900.00,'16/05/2023'),(44,'Franciso','Alejandro',128.00,'17/05/2023'),(45,'cristina ','Fernando',1250.00,'17/05/2023'),(46,'cristina ','Fernando',1900.00,'22/05/2023'),(47,'juan perez','Fernando',2500.00,'25/05/2023'),(48,'juan perez','Alejandro',225.00,'25/05/2023'),(49,'cristina ','Fernando',4750.00,'06/07/2023');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-20 22:03:31

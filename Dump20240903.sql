-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: conductores-vehiculos
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `CONDUCTORES`
--

DROP TABLE IF EXISTS `CONDUCTORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONDUCTORES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONDUCTORES`
--

LOCK TABLES `CONDUCTORES` WRITE;
/*!40000 ALTER TABLE `CONDUCTORES` DISABLE KEYS */;
INSERT INTO `CONDUCTORES` VALUES (1,'Jose','Martinez','9123456789','Barcelona'),(2,'Lucia','Perez','6123456789','Mataro'),(3,'Pablo','Lopez','6987654321','Valladolid'),(4,'Alejandro','Ramirez','985465978','Cuenca'),(5,'Maria','Campos','688799442','Madrid'),(6,'Aitor','Lopez','755642133','Bilbao'),(7,'Helena','Pla','644255866','Palamos'),(8,'Vicente','Flores','548632145','Sevilla'),(9,'Luis','Rios','665998332','Valencia'),(10,'Jose','Gomez','744855966','Valencia');
/*!40000 ALTER TABLE `CONDUCTORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VEHICULOS`
--

DROP TABLE IF EXISTS `VEHICULOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VEHICULOS` (
  `id_vehiculos` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_vehiculos`),
  KEY `id_conductor_idx` (`id_conductor`),
  CONSTRAINT `id_conductor` FOREIGN KEY (`id_conductor`) REFERENCES `CONDUCTORES` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VEHICULOS`
--

LOCK TABLES `VEHICULOS` WRITE;
/*!40000 ALTER TABLE `VEHICULOS` DISABLE KEYS */;
INSERT INTO `VEHICULOS` VALUES (1,'automovil','Toyota','Corolla',2024,1),(2,'Bicicleta','BMX	','X-150',2020,2),(3,'patinete','Xiaomi','Mi-3002',2022,3),(4,'automovil','Audi','Q4',2023,3),(5,'bicicleta','Cannondale','Trail 8',2020,2),(6,'automovil','Alfa Romeo','Giulia',2023,4),(7,'Motocicleta','Ducati','MultiStrada',2022,5),(8,'Avion','Falcon','Falcon-3',2010,6),(9,'helicoptero','Panther','P-III',1985,9),(10,'automovil','Renault','Megane',2019,9);
/*!40000 ALTER TABLE `VEHICULOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 23:59:37

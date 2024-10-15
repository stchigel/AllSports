-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: AllSports
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `Atleta`
--

CREATE DATABASE AllSports; 
USE AllSports;

DROP TABLE IF EXISTS `Atleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Atleta` (
  `idAtleta` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Nacimiento` varchar(45) DEFAULT NULL,
  `Imagen` varchar(45) DEFAULT NULL,
  `Pais_idPais` int NOT NULL,
  PRIMARY KEY (`idAtleta`),
  KEY `fk_Atleta_Pais1_idx` (`Pais_idPais`),
  CONSTRAINT `fk_Atleta_Pais1` FOREIGN KEY (`Pais_idPais`) REFERENCES `Pais` (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Carrera`
--

DROP TABLE IF EXISTS `Carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Carrera` (
  `idCarrera` int NOT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `circuito` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Deporte`
--

DROP TABLE IF EXISTS `Deporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Deporte` (
  `idDeporte` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`idDeporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Futbol-equipos`
--

DROP TABLE IF EXISTS `Futbol-equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Futbol-equipos` (
  `idFutbol-equipos` int NOT NULL,
  `Escudo` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `G` int DEFAULT NULL,
  `P` int DEFAULT NULL,
  `GD` int DEFAULT NULL,
  `Puntos` int DEFAULT NULL,
  `Local` int DEFAULT NULL,
  `Vis` int DEFAULT NULL,
  `Div` int DEFAULT NULL,
  `Conf` int DEFAULT NULL,
  `PPA` int DEFAULT NULL,
  `PPP` int DEFAULT NULL,
  `R` int DEFAULT NULL,
  `U10` int DEFAULT NULL,
  PRIMARY KEY (`idFutbol-equipos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Futbol-equipos_has_Futbol-torneos`
--

DROP TABLE IF EXISTS `Futbol-equipos_has_Futbol-torneos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Futbol-equipos_has_Futbol-torneos` (
  `Futbol-torneos_idFutbol-torneos` int NOT NULL,
  `Partidos-jugados` int DEFAULT NULL,
  `Partidos-empatados` int DEFAULT NULL,
  `Partidos-ganados` int DEFAULT NULL,
  `Partidos-perdidos` int DEFAULT NULL,
  `Goles-a-Favor` int DEFAULT NULL,
  `Goles-en-Contra` int DEFAULT NULL,
  `Puntos` int DEFAULT NULL,
  `Futbol-equipos_idFutbol-equipos` int NOT NULL,
  PRIMARY KEY (`Futbol-torneos_idFutbol-torneos`,`Futbol-equipos_idFutbol-equipos`),
  KEY `fk_Futbol-equipos_has_Futbol-torneos_Futbol-torneos1_idx` (`Futbol-torneos_idFutbol-torneos`),
  KEY `fk_Futbol-equipos_has_Futbol-torneos_Futbol-equipos1_idx` (`Futbol-equipos_idFutbol-equipos`),
  CONSTRAINT `fk_Futbol-equipos_has_Futbol-torneos_Futbol-equipos1` FOREIGN KEY (`Futbol-equipos_idFutbol-equipos`) REFERENCES `Futbol-equipos` (`idFutbol-equipos`),
  CONSTRAINT `fk_Futbol-equipos_has_Futbol-torneos_Futbol-torneos1` FOREIGN KEY (`Futbol-torneos_idFutbol-torneos`) REFERENCES `Futbol-torneos` (`idFutbol-torneos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Futbol-jugadores`
--

DROP TABLE IF EXISTS `Futbol-jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Futbol-jugadores` (
  `idFútbol-jugadores` int NOT NULL,
  `Goles` int DEFAULT NULL,
  `Partidos-ganados` int DEFAULT NULL,
  `Partidos-perdidos` int DEFAULT NULL,
  `Partidos-jugados` int DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFútbol-jugadores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Futbol-torneos`
--

DROP TABLE IF EXISTS `Futbol-torneos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Futbol-torneos` (
  `idFutbol-torneos` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Logo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFutbol-torneos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Medalla`
--

DROP TABLE IF EXISTS `Medalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medalla` (
  `idMedalla` int NOT NULL,
  `Tipo` int DEFAULT NULL,
  `Atleta_idAtleta` int NOT NULL,
  `Deporte_idDeporte` int NOT NULL,
  PRIMARY KEY (`idMedalla`),
  KEY `fk_Medalla_Atleta1_idx` (`Atleta_idAtleta`),
  KEY `fk_Medalla_Deporte1_idx` (`Deporte_idDeporte`),
  CONSTRAINT `fk_Medalla_Atleta1` FOREIGN KEY (`Atleta_idAtleta`) REFERENCES `Atleta` (`idAtleta`),
  CONSTRAINT `fk_Medalla_Deporte1` FOREIGN KEY (`Deporte_idDeporte`) REFERENCES `Deporte` (`idDeporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Pais`
--

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pais` (
  `idPais` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Bandera` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Peleadores`
--

DROP TABLE IF EXISTS `Peleadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Peleadores` (
  `idPeleadores` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `record` varchar(45) DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  `Victorias` int DEFAULT NULL,
  `Derrotas` int DEFAULT NULL,
  `Peleas` int DEFAULT NULL,
  `posicion_division` int DEFAULT NULL,
  `posicionP4P` int DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `KO` int DEFAULT NULL,
  `SUM` int DEFAULT NULL,
  `Desiciones` int DEFAULT NULL,
  `victorias_titulo` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPeleadores`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Pilotos`
--

DROP TABLE IF EXISTS `Pilotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pilotos` (
  `idPilotos` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `constructora` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPilotos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Pilotos_has_Carrera`
--

DROP TABLE IF EXISTS `Pilotos_has_Carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pilotos_has_Carrera` (
  `Pilotos_idPilotos` int NOT NULL,
  `Carrera_idCarrera` int NOT NULL,
  `Posicion` int DEFAULT NULL,
  `puntos` int DEFAULT NULL,
  PRIMARY KEY (`Pilotos_idPilotos`,`Carrera_idCarrera`),
  KEY `fk_Pilotos_has_Carrera_Carrera1_idx` (`Carrera_idCarrera`),
  KEY `fk_Pilotos_has_Carrera_Pilotos1_idx` (`Pilotos_idPilotos`),
  CONSTRAINT `fk_Pilotos_has_Carrera_Carrera1` FOREIGN KEY (`Carrera_idCarrera`) REFERENCES `Carrera` (`idCarrera`),
  CONSTRAINT `fk_Pilotos_has_Carrera_Pilotos1` FOREIGN KEY (`Pilotos_idPilotos`) REFERENCES `Pilotos` (`idPilotos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Tenistas`
--

DROP TABLE IF EXISTS `Tenistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tenistas` (
  `idTenistas` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `puntos` int DEFAULT NULL,
  `titulosSingle` int DEFAULT NULL,
  `titulosDobles` int DEFAULT NULL,
  `SinglesGanados` varchar(45) DEFAULT NULL,
  `SinglesPerdidos` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `posicion` int DEFAULT NULL,
  PRIMARY KEY (`idTenistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jugadores_has_equipos`
--

DROP TABLE IF EXISTS `jugadores_has_equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores_has_equipos` (
  `Futbol-jugadores_idFutbol-jugadores` int NOT NULL,
  `Futbol-equipos_idFutbol-equipos` int NOT NULL,
  `Goles` int DEFAULT NULL,
  `Partidos-jugados` int DEFAULT NULL,
  `Partidos-ganados` int DEFAULT NULL,
  `Partidos-perdidos` int DEFAULT NULL,
  PRIMARY KEY (`Futbol-jugadores_idFutbol-jugadores`,`Futbol-equipos_idFutbol-equipos`),
  KEY `fk_Futbol-jugadores_has_Futbol-equipos1_Futbol-equipos1_idx` (`Futbol-equipos_idFutbol-equipos`),
  KEY `fk_Futbol-jugadores_has_Futbol-equipos1_Futbol-jugadores1_idx` (`Futbol-jugadores_idFutbol-jugadores`),
  CONSTRAINT `fk_Futbol-jugadores_has_Futbol-equipos1_Futbol-equipos1` FOREIGN KEY (`Futbol-equipos_idFutbol-equipos`) REFERENCES `Futbol-equipos` (`idFutbol-equipos`),
  CONSTRAINT `fk_Futbol-jugadores_has_Futbol-equipos1_Futbol-jugadores1` FOREIGN KEY (`Futbol-jugadores_idFutbol-jugadores`) REFERENCES `Futbol-jugadores` (`idFútbol-jugadores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticias` (
  `idnoticias` int NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `titulo` varchar(450) DEFAULT NULL,
  `nbody` varchar(1638) DEFAULT NULL,
  PRIMARY KEY (`idnoticias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 15:58:36

-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: AllSports
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

CREATE DATABASE AllSports;
USE AllSports;

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

CREATE TABLE cuentas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) UNIQUE NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    contrasena VARCHAR(255) NOT NULL
);


--
-- Table structure for table `Atleta`
--

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
-- Dumping data for table `Atleta`
--

LOCK TABLES `Atleta` WRITE;
/*!40000 ALTER TABLE `Atleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Atleta` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Carrera`
--

LOCK TABLES `Carrera` WRITE;
/*!40000 ALTER TABLE `Carrera` DISABLE KEYS */;
INSERT INTO `Carrera` VALUES (1,'Melbourne','Gran Premio de Australia','Albert Park Circuit'),(2,'Bahréin','Gran Premio de Bahréin','Bahrain International Circuit'),(3,'Mónaco','Gran Premio de Mónaco','Circuit de Monaco'),(4,'Barcelona','Gran Premio de España','Circuit de Barcelona-Catalunya'),(5,'Mugello','Gran Premio de la Toscana','Autodromo del Mugello'),(6,'Silverstone','Gran Premio de Gran Bretaña','Silverstone Circuit'),(7,'Hungría','Gran Premio de Hungría','Hungaroring'),(8,'Spa-Francorchamps','Gran Premio de Bélgica','Circuit de Spa-Francorchamps'),(9,'Zandvoort','Gran Premio de los Países Bajos','Circuit Zandvoort'),(10,'Monza','Gran Premio de Italia','Autodromo Nazionale Monza'),(11,'Rusia','Gran Premio de Rusia','Sochi Autodrom'),(12,'Singapur','Gran Premio de Singapur','Marina Bay Street Circuit'),(13,'Japón','Gran Premio de Japón','Suzuka Circuit'),(14,'Estados Unidos','Gran Premio de EE. UU.','Circuit of the Americas'),(15,'México','Gran Premio de México','Autódromo Hermanos Rodríguez'),(16,'Brasil','Gran Premio de Brasil','Interlagos'),(17,'Abu Dabi','Gran Premio de Abu Dabi','Yas Marina Circuit'),(18,'Austria','Gran Premio de Austria','Red Bull Ring'),(19,'Turquía','Gran Premio de Turquía','Intercity Istanbul Park'),(20,'Arabia Saudita','Gran Premio de Arabia Saudita','Jeddah Street Circuit');
/*!40000 ALTER TABLE `Carrera` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Deporte`
--

LOCK TABLES `Deporte` WRITE;
/*!40000 ALTER TABLE `Deporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `Deporte` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Jugados` int DEFAULT NULL,
  `Ganados` int DEFAULT NULL,
  `Perdidos` int DEFAULT NULL,
  `Empatados` int DEFAULT NULL,
  `Puntos` int DEFAULT NULL,
  `Div` varchar(45) DEFAULT NULL,
  `Conf` varchar(45) DEFAULT NULL,
  `GolesFavor` int DEFAULT NULL,
  `GolesContra` int DEFAULT NULL,
  `Liga` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFutbol-equipos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Futbol-equipos`
--

LOCK TABLES `Futbol-equipos` WRITE;
/*!40000 ALTER TABLE `Futbol-equipos` DISABLE KEYS */;
INSERT INTO `Futbol-equipos` VALUES (1,'escudo1.png','Real Madrid',10,7,1,2,23,'Primera','UEFA',20,8,'La Liga'),(2,'escudo2.png','FC Barcelona',10,6,1,3,21,'Primera','UEFA',19,7,'La Liga'),(3,'escudo3.png','Atlético de Madrid',10,5,2,3,18,'Primera','UEFA',15,9,'La Liga'),(4,'escudo4.png','Sevilla FC',10,4,4,2,16,'Primera','UEFA',14,10,'La Liga'),(5,'escudo5.png','Real Betis',10,5,3,2,17,'Primera','UEFA',18,12,'La Liga'),(6,'escudo6.png','Real Sociedad',10,6,2,2,20,'Primera','UEFA',17,8,'La Liga'),(7,'escudo7.png','Villarreal',10,3,4,3,13,'Primera','UEFA',12,11,'La Liga'),(8,'escudo8.png','Valencia',10,3,5,2,11,'Primera','UEFA',10,13,'La Liga'),(9,'escudo9.png','Celta Vigo',10,2,6,2,8,'Primera','UEFA',9,14,'La Liga'),(10,'escudo10.png','Getafe',10,3,5,2,11,'Primera','UEFA',8,15,'La Liga'),(11,'escudo11.png','Athletic Bilbao',10,5,2,3,18,'Primera','UEFA',16,9,'La Liga'),(12,'escudo12.png','Osasuna',10,4,3,3,15,'Primera','UEFA',13,12,'La Liga'),(13,'escudo13.png','Granada',10,3,6,1,10,'Primera','UEFA',10,16,'La Liga'),(14,'escudo14.png','Espanyol',10,2,6,2,8,'Primera','UEFA',9,14,'La Liga'),(15,'escudo15.png','Real Valladolid',10,2,7,1,7,'Primera','UEFA',7,18,'La Liga'),(16,'escudo16.png','Elche CF',10,1,8,1,4,'Primera','UEFA',6,19,'La Liga'),(17,'escudo17.png','Alavés',10,3,6,1,10,'Primera','UEFA',8,13,'La Liga'),(18,'escudo18.png','Levante',10,2,6,2,8,'Primera','UEFA',7,14,'La Liga'),(19,'escudo19.png','Rayo Vallecano',10,4,3,3,15,'Primera','UEFA',13,12,'La Liga'),(20,'escudo20.png','Mallorca',10,3,5,2,11,'Primera','UEFA',11,14,'La Liga'),(21,'escudo21.png','Manchester City',10,8,1,1,25,'Primera','UEFA',22,5,'Premier League'),(22,'escudo22.png','Liverpool',10,7,2,1,22,'Primera','UEFA',20,8,'Premier League'),(23,'escudo23.png','Chelsea',10,6,3,1,19,'Primera','UEFA',17,9,'Premier League'),(24,'escudo24.png','Arsenal',10,5,3,2,18,'Primera','UEFA',15,10,'Premier League'),(25,'escudo25.png','Tottenham',10,5,2,3,18,'Primera','UEFA',16,11,'Premier League'),(26,'escudo26.png','Manchester United',10,4,4,2,16,'Primera','UEFA',14,10,'Premier League'),(27,'escudo27.png','Leicester City',10,4,3,3,15,'Primera','UEFA',13,12,'Premier League'),(28,'escudo28.png','West Ham United',10,4,4,2,16,'Primera','UEFA',12,11,'Premier League'),(29,'escudo29.png','Everton',10,3,5,2,11,'Primera','UEFA',11,14,'Premier League'),(30,'escudo30.png','Leeds United',10,2,6,2,8,'Primera','UEFA',9,14,'Premier League'),(31,'escudo31.png','Aston Villa',10,5,4,1,16,'Primera','UEFA',14,12,'Premier League'),(32,'escudo32.png','Brighton & Hove Albion',10,3,4,3,13,'Primera','UEFA',12,13,'Premier League'),(33,'escudo33.png','Wolves',10,2,6,2,8,'Primera','UEFA',9,15,'Premier League'),(34,'escudo34.png','Crystal Palace',10,2,5,3,9,'Primera','UEFA',8,14,'Premier League'),(35,'escudo35.png','Newcastle United',10,6,2,2,20,'Primera','UEFA',18,7,'Premier League'),(36,'escudo36.png','Southampton',10,1,7,2,5,'Primera','UEFA',7,17,'Premier League'),(37,'escudo37.png','Burnley',10,2,6,2,8,'Primera','UEFA',9,14,'Premier League'),(38,'escudo38.png','Brentford',10,3,4,3,12,'Primera','UEFA',11,13,'Premier League'),(39,'escudo39.png','Norwich City',10,1,8,1,4,'Primera','UEFA',6,20,'Premier League'),(40,'escudo40.png','Watford',10,2,7,1,7,'Primera','UEFA',8,18,'Premier League'),(41,'escudo41.png','Paris Saint-Germain',10,8,1,1,25,'Primera','UEFA',24,6,'Ligue 1'),(42,'escudo42.png','Olympique de Marsella',10,7,2,1,22,'Primera','UEFA',21,8,'Ligue 1'),(43,'escudo43.png','Olympique de Lyon',10,6,3,1,19,'Primera','UEFA',17,10,'Ligue 1'),(44,'escudo44.png','AS Monaco',10,5,3,2,18,'Primera','UEFA',16,9,'Ligue 1'),(45,'escudo45.png','Lille OSC',10,4,4,2,16,'Primera','UEFA',15,12,'Ligue 1'),(46,'escudo46.png','RC Lens',10,5,3,2,18,'Primera','UEFA',16,10,'Ligue 1'),(47,'escudo47.png','Stade Rennais',10,4,5,1,13,'Primera','UEFA',14,11,'Ligue 1'),(48,'escudo48.png','OGC Niza',10,3,4,3,12,'Primera','UEFA',12,13,'Ligue 1'),(49,'escudo49.png','Montpellier',10,3,5,2,11,'Primera','UEFA',11,14,'Ligue 1'),(50,'escudo50.png','FC Nantes',10,2,6,2,8,'Primera','UEFA',10,16,'Ligue 1'),(51,'escudo51.png','Strasbourg',10,4,4,2,14,'Primera','UEFA',15,12,'Ligue 1'),(52,'escudo52.png','Toulouse',10,3,4,3,12,'Primera','UEFA',12,13,'Ligue 1'),(53,'escudo53.png','Bordeaux',10,2,5,3,9,'Primera','UEFA',9,13,'Ligue 1'),(54,'escudo54.png','Reims',10,2,6,2,8,'Primera','UEFA',10,15,'Ligue 1'),(55,'escudo55.png','Saint-Étienne',10,3,5,2,11,'Primera','UEFA',10,16,'Ligue 1'),(56,'escudo56.png','Metz',10,1,7,2,5,'Primera','UEFA',7,18,'Ligue 1'),(57,'escudo57.png','Angers',10,4,3,3,15,'Primera','UEFA',14,11,'Ligue 1'),(58,'escudo58.png','Brest',10,2,6,2,8,'Primera','UEFA',9,15,'Ligue 1'),(59,'escudo59.png','Lorient',10,3,5,2,11,'Primera','UEFA',11,14,'Ligue 1'),(60,'escudo60.png','Clermont Foot',10,1,8,1,4,'Primera','UEFA',7,19,'Ligue 1'),(61,'escudo61.png','Juventus',10,7,1,2,23,'Primera','UEFA',21,9,'Serie A'),(62,'escudo62.png','AC Milan',10,6,3,1,19,'Primera','UEFA',18,12,'Serie A'),(63,'escudo63.png','Inter de Milán',10,5,3,2,17,'Primera','UEFA',16,11,'Serie A'),(64,'escudo64.png','AS Roma',10,5,4,1,16,'Primera','UEFA',15,13,'Serie A'),(65,'escudo65.png','Napoli',10,4,4,2,14,'Primera','UEFA',13,11,'Serie A'),(66,'escudo66.png','Lazio',10,4,5,1,13,'Primera','UEFA',14,14,'Serie A'),(67,'escudo67.png','Atalanta',10,5,2,3,18,'Primera','UEFA',19,15,'Serie A'),(68,'escudo68.png','Fiorentina',10,3,5,2,11,'Primera','UEFA',10,13,'Serie A'),(69,'escudo69.png','Torino',10,2,6,2,8,'Primera','UEFA',9,14,'Serie A'),(70,'escudo70.png','Sampdoria',10,3,4,3,12,'Primera','UEFA',11,16,'Serie A'),(71,'escudo71.png','Bologna',10,4,3,3,15,'Primera','UEFA',12,12,'Serie A'),(72,'escudo72.png','Udinese',10,3,4,3,12,'Primera','UEFA',11,13,'Serie A'),(73,'escudo73.png','Cagliari',10,2,5,3,9,'Primera','UEFA',10,18,'Serie A'),(74,'escudo74.png','Genoa',10,2,7,1,7,'Primera','UEFA',8,19,'Serie A'),(75,'escudo75.png','Sassuolo',10,3,5,2,11,'Primera','UEFA',10,15,'Serie A'),(76,'escudo76.png','Salernitana',10,1,7,2,5,'Primera','UEFA',7,20,'Serie A'),(77,'escudo77.png','Spezia',10,4,3,3,15,'Primera','UEFA',14,14,'Serie A'),(78,'escudo78.png','Empoli',10,3,6,1,10,'Primera','UEFA',9,18,'Serie A'),(79,'escudo79.png','Bayern Múnich',10,8,1,1,25,'Primera','UEFA',30,8,'Bundesliga'),(80,'escudo80.png','Borussia Dortmund',10,7,2,1,22,'Primera','UEFA',25,10,'Bundesliga'),(81,'escudo81.png','RB Leipzig',10,6,2,2,20,'Primera','UEFA',21,15,'Bundesliga'),(82,'escudo82.png','Bayer Leverkusen',10,5,3,2,17,'Primera','UEFA',19,14,'Bundesliga'),(83,'escudo83.png','VfL Wolfsburgo',10,4,4,2,14,'Primera','UEFA',15,12,'Bundesliga'),(84,'escudo84.png','Borussia Mönchengladbach',10,3,5,2,11,'Primera','UEFA',13,19,'Bundesliga'),(85,'escudo85.png','Eintracht Frankfurt',10,4,4,2,14,'Primera','UEFA',16,15,'Bundesliga'),(86,'escudo86.png','SC Freiburg',10,5,3,2,17,'Primera','UEFA',19,17,'Bundesliga'),(87,'escudo87.png','Hoffenheim',10,2,6,2,8,'Primera','UEFA',10,18,'Bundesliga'),(88,'escudo88.png','FC Köln',10,3,4,3,12,'Primera','UEFA',11,13,'Bundesliga'),(89,'escudo89.png','VfB Stuttgart',10,2,6,2,8,'Primera','UEFA',9,20,'Bundesliga'),(90,'escudo90.png','Union Berlín',10,4,4,2,14,'Primera','UEFA',13,14,'Bundesliga'),(91,'escudo91.png','Arminia Bielefeld',10,3,5,2,11,'Primera','UEFA',10,17,'Bundesliga'),(92,'escudo92.png','Schalke 04',10,2,6,2,8,'Primera','UEFA',9,21,'Bundesliga'),(93,'escudo93.png','Hertha Berlín',10,3,6,1,10,'Primera','UEFA',12,22,'Bundesliga'),(94,'escudo94.png','Greuther Fürth',10,1,8,1,4,'Primera','UEFA',6,30,'Bundesliga'),(95,'escudo95.png','Mainz 05',10,3,4,3,12,'Primera','UEFA',11,16,'Bundesliga'),(96,'escudo96.png','FC Augsburg',10,2,6,2,8,'Primera','UEFA',9,20,'Bundesliga'),(97,'escudo97.png','Bochum',10,1,8,1,4,'Primera','UEFA',6,25,'Bundesliga'),(98,'escudo98.png','Darmstadt',10,1,7,2,5,'Primera','UEFA',7,22,'Bundesliga'),(790,'escudo79.png','Cremonense',10,2,5,3,9,'Primera','UEFA',8,15,'Serie A'),(800,'escudo80.png','Monza',10,3,6,1,10,'Primera','UEFA',11,18,'Serie A');
/*!40000 ALTER TABLE `Futbol-equipos` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Futbol-equipos_has_Futbol-torneos`
--

LOCK TABLES `Futbol-equipos_has_Futbol-torneos` WRITE;
/*!40000 ALTER TABLE `Futbol-equipos_has_Futbol-torneos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Futbol-equipos_has_Futbol-torneos` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Futbol-jugadores`
--

LOCK TABLES `Futbol-jugadores` WRITE;
/*!40000 ALTER TABLE `Futbol-jugadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `Futbol-jugadores` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Futbol-torneos`
--

LOCK TABLES `Futbol-torneos` WRITE;
/*!40000 ALTER TABLE `Futbol-torneos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Futbol-torneos` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Medalla`
--

LOCK TABLES `Medalla` WRITE;
/*!40000 ALTER TABLE `Medalla` DISABLE KEYS */;
/*!40000 ALTER TABLE `Medalla` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Pais`
--

LOCK TABLES `Pais` WRITE;
/*!40000 ALTER TABLE `Pais` DISABLE KEYS */;
INSERT INTO `Pais` VALUES (1,'AR','argentina.png'),(2,'BR','brasil.png'),(3,'CL','chile.png'),(4,'CO','colombia.png'),(5,'MX','mexico.png'),(6,'PE','peru.png'),(7,'VE','venezuela.png'),(8,'UY','uruguay.png'),(9,'PY','paraguay.png'),(10,'EC','ecuador.png'),(11,'BO','bolivia.png'),(12,'CU','cuba.png'),(13,'DO','dominicana.png'),(14,'HN','honduras.png'),(15,'GT','guatemala.png'),(16,'NI','nicaragua.png'),(17,'SV','elsalvador.png'),(18,'CR','costarica.png'),(19,'PA','panama.png'),(20,'GY','guyana.png'),(21,'SR','surinam.png'),(22,'JM','jamaica.png'),(23,'TT','trinidadytobago.png'),(24,'BB','barbados.png'),(25,'BS','bahamas.png'),(26,'LC','santalucia.png'),(27,'VC','sanvicente.png'),(28,'AG','antiguaybarbuda.png'),(29,'DM','dominica.png'),(30,'PT','portugal.png'),(31,'ES','espana.png'),(32,'FR','francia.png'),(33,'DE','alemania.png'),(34,'IT','italia.png'),(35,'GB','reino_unido.png'),(36,'NL','paises_bajos.png'),(37,'BE','belgica.png'),(38,'SE','suecia.png'),(39,'NO','noruega.png'),(40,'FI','finlandia.png'),(41,'DK','dinamarca.png'),(42,'IS','islandia.png'),(43,'IE','irlanda.png'),(44,'AT','austria.png'),(45,'CH','suiza.png'),(46,'PL','polonia.png'),(47,'CZ','chequia.png'),(48,'HU','hungria.png'),(49,'RO','rumania.png'),(50,'BG','bulgaria.png'),(51,'SK','eslovaquia.png'),(52,'HR','croacia.png'),(53,'SI','eslovenia.png'),(54,'LT','lituania.png'),(55,'LV','letonia.png'),(56,'EE','estonia.png'),(57,'UA','ucrania.png'),(58,'RU','rusia.png'),(59,'KZ','kazajistan.png'),(60,'JP','japon.png'),(61,'CN','china.png'),(62,'IN','india.png'),(63,'AU','australia.png'),(64,'NZ','nueva_zelanda.png'),(65,'ZA','sudafrica.png'),(66,'EG','egipto.png'),(67,'MA','marruecos.png'),(68,'NG','nigeria.png'),(69,'KE','kenia.png'),(70,'GH','ghana.png'),(71,'TZ','tanzania.png'),(72,'UG','uganda.png'),(73,'ZM','zambia.png'),(74,'ZW','zimbabue.png'),(75,'AE','emiratos_arabes_unidos.png'),(76,'SA','arabia_saudita.png'),(77,'IL','israel.png'),(78,'TH','tailandia.png'),(79,'VN','vietnam.png'),(80,'PH','filipinas.png'),(81,'MY','malasia.png'),(82,'SG','singapur.png'),(83,'KR','corea_del_sur.png'),(84,'KP','corea_del_norte.png'),(85,'HK','hong_kong.png'),(86,'TW','taiwan.png'),(87,'BN','brunei.png'),(88,'MN','mongolia.png'),(89,'LA','laos.png'),(90,'KH','camboya.png'),(91,'MM','birmania.png'),(92,'KH','camboya.png'),(93,'BT','bhután.png'),(94,'NP','nepal.png'),(95,'PK','pakistan.png'),(96,'AF','afganistan.png'),(97,'IR','iran.png'),(98,'IQ','irak.png'),(99,'SY','siria.png'),(100,'YE','yemen.png');
/*!40000 ALTER TABLE `Pais` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Decisiones` int DEFAULT NULL,
  `victorias_titulo` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPeleadores`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Peleadores`
--

LOCK TABLES `Peleadores` WRITE;
/*!40000 ALTER TABLE `Peleadores` DISABLE KEYS */;
INSERT INTO `Peleadores` VALUES (294,'Stipe','Miocic','20-4','Heavyweight',20,4,24,1,4,NULL,15,3,2,2,'Campeon Peso Pesado'),(295,'Francis','Ngannou','17-3','Heavyweight',17,3,20,2,9,NULL,12,4,1,1,'1. Peso Pesado'),(296,'Curtis','Blaydes','15-3','Heavyweight',15,3,18,3,NULL,NULL,10,2,3,0,'2.Peso Pesado'),(297,'Derrick','Lewis','25-7','Heavyweight',25,7,32,4,NULL,NULL,20,4,1,0,'3. Peso Pesado'),(298,'Cyril','Gane','10-1','Heavyweight',10,1,11,5,NULL,NULL,5,4,1,0,'4.Peso Pesado'),(299,'Alexander','Volkov','33-9','Heavyweight',33,9,42,6,NULL,NULL,23,7,3,0,'5. Peso Pesado'),(300,'Jairzinho','Rozenstruik','12-3','Heavyweight',12,3,15,7,NULL,NULL,11,1,0,0,'6. Peso Pesado'),(301,'Marcin','Tybura','22-6','Heavyweight',22,6,28,8,NULL,NULL,9,10,3,0,'7. Peso Pesado'),(302,'Walt','Harris','13-9','Heavyweight',13,9,22,9,NULL,NULL,13,0,0,0,'8. Peso Pesado'),(303,'Chris','Daukaus','11-3','Heavyweight',11,3,14,10,NULL,NULL,8,1,2,0,'9. Peso Pesado'),(304,'Alex','Pereira','12-2','Light Heavyweight',12,2,13,1,3,NULL,10,0,2,5,'Campeon Peso Semipesado'),(305,'Jan','Blachowicz','28-8','Light Heavyweight',28,8,36,2,NULL,NULL,8,4,16,1,'1. Peso Semipesado'),(306,'Jiri','Prochazka','28-3','Light Heavyweight',28,3,31,3,NULL,NULL,25,2,1,0,'2. Peso Semipesado'),(307,'Aleksandar','Rakic','14-2','Light Heavyweight',14,2,16,4,NULL,NULL,9,2,3,0,'3. Peso Semipesado'),(308,'Dominick','Reyes','12-3','Light Heavyweight',12,3,15,5,NULL,NULL,7,5,0,0,'4. Peso Semipesado'),(309,'Thiago','Santos','21-9','Light Heavyweight',21,9,30,6,NULL,NULL,15,2,3,0,'5. Peso Semipesado'),(310,'Magomed','Ankalaev','15-1','Light Heavyweight',15,1,16,7,NULL,NULL,9,2,4,0,'6. Peso Semipesado'),(311,'Anthony','Smith','34-16','Light Heavyweight',34,16,50,8,NULL,NULL,19,8,6,0,'7. Peso Semipesado'),(312,'Johnny','Walker','18-5','Light Heavyweight',18,5,23,9,NULL,NULL,15,2,1,0,'8. Peso Semipesado'),(313,'Paul','Craig','14-4','Light Heavyweight',14,4,18,10,NULL,NULL,2,7,3,0,'9. Peso Semipesado'),(314,'Dricus','Du Plessis','22-2','Middleweight',22,2,24,1,5,NULL,8,12,2,2,'Campeon Peso Medio'),(315,'Israel','Adesanya','21-1','Middleweight',21,1,22,2,NULL,NULL,15,3,3,2,'1. Peso Medio'),(316,'Robert','Whittaker','23-5','Middleweight',23,5,28,3,NULL,NULL,9,7,6,0,'2. Peso Medio'),(317,'Paulo','Costa','13-1','Middleweight',13,1,14,4,10,NULL,11,1,1,0,'3. Peso Medio'),(318,'Jared','Cannonier','13-5','Middleweight',13,5,18,5,NULL,NULL,9,3,1,0,'4. Peso Medio'),(319,'Derek','Brunson','22-7','Middleweight',22,7,29,6,NULL,NULL,13,7,1,0,'5. Peso Medio'),(320,'Kelvin','Gastelum','17-7','Middleweight',17,7,24,7,NULL,NULL,7,5,4,0,'6. Peso Medio'),(321,'Jack','Hermansson','22-6','Middleweight',22,6,28,8,NULL,NULL,11,5,2,0,'7. Peso Medio'),(322,'Darren','Till','18-3','Middleweight',18,3,21,9,NULL,NULL,10,3,1,0,'8. Peso Medio'),(323,'Marvin','Vettori','17-4','Middleweight',17,4,21,10,NULL,NULL,7,4,1,0,'9. Peso Medio'),(324,'Kamaru','Usman','19-1','Welterweight',19,1,20,1,8,NULL,9,5,5,4,'Campeon Peso Welter'),(325,'Colby','Covington','16-2','Welterweight',16,2,18,2,NULL,NULL,4,8,4,0,'1. Peso Welter'),(326,'Gilbert','Burns','19-3','Welterweight',19,3,22,3,NULL,NULL,6,10,3,0,'2. Peso Welter'),(327,'Leon','Edwards','18-3','Welterweight',18,3,21,4,NULL,NULL,6,9,2,0,'3. Peso Welter'),(328,'Stephen','Thompson','16-4','Welterweight',16,4,20,5,NULL,NULL,7,5,3,0,'4. Peso Welter'),(329,'Jorge','Masvidal','35-14','Welterweight',35,14,49,6,NULL,NULL,16,8,11,0,'5. Peso Welter'),(330,'Michael','Chiesa','18-4','Welterweight',18,4,22,7,NULL,NULL,5,10,2,0,'6. Peso Welter'),(331,'Neil','Magny','24-8','Welterweight',24,8,32,8,NULL,NULL,7,15,2,0,'7. Peso Welter'),(332,'Geoff','Neal','13-3','Welterweight',13,3,16,9,NULL,NULL,8,4,1,0,'8. Peso Welter'),(333,'Vicente','Luque','19-7','Welterweight',19,7,26,10,NULL,NULL,11,6,2,0,'9. Peso Welter'),(334,'Charles','Oliveira','34-10','Lightweight',34,10,44,1,2,NULL,10,21,3,3,'Campeon Peso Ligero'),(335,'Dustin','Poirier','27-6','Lightweight',27,6,33,2,NULL,NULL,14,9,4,0,'1. Peso Ligero'),(336,'Justin','Gaethje','22-3','Lightweight',22,3,25,3,NULL,NULL,19,2,1,0,'2. Peso Ligero'),(337,'Michael','Chandler','22-5','Lightweight',22,5,27,4,NULL,NULL,17,3,2,0,'3. Peso Ligero'),(338,'Tony','Ferguson','25-6','Lightweight',25,6,31,5,NULL,NULL,12,8,5,0,'4. Peso Ligero'),(339,'Islam','Makhachev','19-1','Lightweight',19,1,20,6,NULL,NULL,3,10,5,0,'5. Peso Ligero'),(340,'Dan','Hooker','20-10','Lightweight',20,10,30,7,NULL,NULL,12,6,2,0,'6. Peso Ligero'),(341,'Rafael','Dos Anjos','30-13','Lightweight',30,13,43,8,NULL,NULL,5,14,3,0,'7. Peso Ligero'),(342,'Conor','McGregor','22-6','Lightweight',22,6,28,9,NULL,NULL,19,2,1,0,'8. Peso Ligero'),(343,'Gregor','Gillespie','14-1','Lightweight',14,1,15,10,NULL,NULL,6,2,2,0,'9. Peso Ligero'),(344,'Ilia','Topuria','15-0','Featherweight',15,0,15,1,1,NULL,5,8,2,1,'Campeon Peso Pluma'),(345,'Alexander','Volkanovski','23-1','Featherweight',23,1,24,2,7,NULL,11,5,7,2,'1. Peso Pluma'),(346,'Max','Holloway','22-6','Featherweight',22,6,28,3,NULL,NULL,10,6,6,2,'2. Peso Pluma'),(347,'Brian','Ortega','15-1','Featherweight',15,1,16,4,NULL,NULL,3,7,4,0,'3. Peso Pluma'),(348,'Yair','Rodriguez','13-2','Featherweight',13,2,16,5,NULL,NULL,4,7,2,0,'4. Peso Pluma'),(349,'Chan Sung','Jung','16-6','Featherweight',16,6,22,6,NULL,NULL,6,10,0,0,'5. Peso Pluma'),(350,'Calvin','Kattar','22-5','Featherweight',22,5,27,7,NULL,NULL,11,5,4,0,'6. Peso Pluma'),(351,'Josh','Emmett','16-2','Featherweight',16,2,18,8,NULL,NULL,6,4,2,0,'7. Peso Pluma'),(352,'Arnold','Allen','16-1','Featherweight',16,1,17,9,NULL,NULL,4,3,3,0,'8. Peso Pluma'),(353,'Shane','Burgos','13-3','Featherweight',13,3,16,10,NULL,NULL,5,5,3,0,'9. Peso Pluma'),(354,'Aljamain','Sterling','20-3','Bantamweight',20,3,23,1,NULL,NULL,2,6,12,1,'Campeon Peso Gallo'),(355,'Petr','Yan','15-2','Bantamweight',15,2,17,2,NULL,NULL,7,3,5,1,'1. Peso Gallo'),(356,'Cory','Sandhagen','14-2','Bantamweight',14,2,16,3,NULL,NULL,6,4,4,0,'2. Peso Gallo'),(357,'Rob','Font','18-4','Bantamweight',18,4,22,4,NULL,NULL,8,6,4,0,'3. Peso Gallo'),(358,'Marlon','Moraes','23-8','Bantamweight',23,8,31,5,NULL,NULL,10,8,4,0,'4. Peso Gallo'),(359,'Jose','Aldo','29-7','Bantamweight',29,7,36,6,NULL,NULL,17,7,5,0,'5. Peso Gallo'),(360,'Frankie','Edgar','24-9','Bantamweight',24,9,33,7,NULL,NULL,7,12,5,1,'6. Peso Gallo'),(361,'Dominick','Cruz','23-3','Bantamweight',23,3,26,8,NULL,NULL,7,6,10,2,'7. Peso Gallo'),(362,'Marlon','Vera','16-7','Bantamweight',16,7,23,9,NULL,NULL,7,6,3,0,'8. Peso Gallo'),(363,'Sean','OMalley','13-1','Bantamweight',13,1,14,10,NULL,NULL,9,2,1,0,'9. Peso Gallo'),(364,'Deiveson','Figueiredo','21-1','Flyweight',21,1,22,1,6,NULL,9,5,7,3,'Campeon Peso Mosca'),(365,'Brandon','Moreno','18-5','Flyweight',18,5,23,2,NULL,NULL,3,8,7,1,'1. Peso Mosca'),(366,'Askar','Askarov','14-0','Flyweight',14,0,14,3,NULL,NULL,4,6,4,0,'2. Peso Mosca'),(367,'Alexandre','Pantoja','22-5','Flyweight',22,5,27,4,NULL,NULL,8,9,5,0,'3. Peso Mosca'),(368,'Alex','Perez','24-6','Flyweight',24,6,30,5,NULL,NULL,5,12,7,0,'4. Peso Mosca'),(369,'Joseph','Benavidez','28-7','Flyweight',28,7,35,6,NULL,NULL,8,11,9,0,'5. Peso Mosca'),(370,'Kai','Kara-France','21-9','Flyweight',21,9,30,7,NULL,NULL,10,9,2,0,'6. Peso Mosca'),(371,'Rogerio','Bontorin','16-2','Flyweight',16,2,18,8,NULL,NULL,3,6,2,0,'7. Peso Mosca'),(372,'Tim','Elliott','17-11','Flyweight',17,11,28,9,NULL,NULL,3,12,2,0,'8. Peso Mosca'),(373,'Matt','Schnell','15-5','Flyweight',15,5,20,10,NULL,NULL,6,4,5,0,'9. Peso Mosca');
/*!40000 ALTER TABLE `Peleadores` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Pilotos`
--

LOCK TABLES `Pilotos` WRITE;
/*!40000 ALTER TABLE `Pilotos` DISABLE KEYS */;
INSERT INTO `Pilotos` VALUES (1,'Lewis','Hamilton','Mercedes','Reino Unido','hamilton.jpg'),(2,'Max','Verstappen','Red Bull','Países Bajos','verstappen.jpg'),(3,'Sebastian','Vettel','Aston Martin','Alemania','vettel.jpg'),(4,'Fernando','Alonso','Alpine','España','alonso.jpg'),(5,'Charles','Leclerc','Ferrari','Mónaco','leclerc.jpg'),(6,'Sergio','Pérez','Red Bull','México','perez.jpg'),(7,'Carlos','Sainz','Ferrari','España','sainz.jpg'),(8,'Lando','Norris','McLaren','Reino Unido','norris.jpg'),(9,'Daniel','Ricciardo','McLaren','Australia','ricciardo.jpg'),(10,'George','Russell','Mercedes','Reino Unido','russell.jpg'),(11,'Kimi','Raikkonen','Alfa Romeo','Finlandia','raikkonen.jpg'),(12,'Lance','Stroll','Aston Martin','Canadá','stroll.jpg'),(13,'Esteban','Ocon','Alpine','Francia','ocon.jpg'),(14,'Nicholas','Latifi','Williams','Canadá','latifi.jpg'),(15,'Mick','Schumacher','Haas','Alemania','schumacher.jpg'),(16,'Kevin','Magnussen','Haas','Dinamarca','magnussen.jpg'),(17,'Yuki','Tsunoda','AlphaTauri','Japón','tsunoda.jpg'),(18,'Pierre','Gasly','Alpine','Francia','gasly.jpg'),(19,'Nikita','Mazepin','Haas','Rusia','mazepin.jpg'),(20,'Franco','Colapinto','Williams','Argentina','colapinto.jpg');
/*!40000 ALTER TABLE `Pilotos` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Pilotos_has_Carrera`
--

LOCK TABLES `Pilotos_has_Carrera` WRITE;
/*!40000 ALTER TABLE `Pilotos_has_Carrera` DISABLE KEYS */;
INSERT INTO `Pilotos_has_Carrera` VALUES (1,1,20,NULL),(1,2,11,NULL),(1,3,21,NULL),(1,4,20,NULL),(1,5,20,NULL),(1,6,20,NULL),(1,7,20,NULL),(1,8,20,NULL),(1,9,20,NULL),(1,10,20,NULL),(1,11,20,NULL),(1,12,20,NULL),(1,13,20,NULL),(1,14,20,NULL),(1,15,20,NULL),(1,16,20,NULL),(1,17,20,NULL),(1,18,20,NULL),(1,19,3,15),(1,20,20,NULL),(2,1,2,18),(2,2,1,25),(2,3,4,12),(2,4,3,15),(2,5,6,8),(2,6,1,25),(2,7,3,15),(2,8,2,18),(2,9,3,15),(2,10,1,25),(2,11,2,18),(2,12,1,25),(2,13,1,25),(2,14,4,12),(2,15,1,25),(2,16,4,12),(2,17,2,18),(2,18,3,15),(2,19,20,NULL),(2,20,4,12),(3,1,3,15),(3,2,4,12),(3,3,1,25),(3,4,2,18),(3,5,1,25),(3,6,4,12),(3,7,1,25),(3,8,1,25),(3,9,1,25),(3,10,3,15),(3,11,3,15),(3,12,2,18),(3,13,4,12),(3,14,3,15),(3,15,4,12),(3,16,1,25),(3,17,4,12),(3,18,2,18),(3,19,2,18),(3,20,2,18),(4,1,4,12),(4,2,5,10),(4,3,3,15),(4,4,4,12),(4,5,2,18),(4,6,2,18),(4,7,5,10),(4,8,4,12),(4,9,2,18),(4,10,4,12),(4,11,4,12),(4,12,4,12),(4,13,3,15),(4,14,2,18),(4,15,3,15),(4,16,2,18),(4,17,3,15),(4,18,4,12),(4,19,5,10),(4,20,3,15),(5,1,5,10),(5,2,6,8),(5,3,6,8),(5,4,5,10),(5,5,4,12),(5,6,3,15),(5,7,4,12),(5,8,6,8),(5,9,5,10),(5,10,10,1),(5,11,5,10),(5,12,5,10),(5,13,8,4),(5,14,5,10),(5,15,5,10),(5,16,5,10),(5,17,5,10),(5,18,5,10),(5,19,4,12),(5,20,5,10),(6,1,6,8),(6,2,2,18),(6,3,7,6),(6,4,6,8),(6,5,3,15),(6,6,5,10),(6,7,7,6),(6,8,5,10),(6,9,6,8),(6,10,6,8),(6,11,6,8),(6,12,7,6),(6,13,6,8),(6,14,9,8),(6,15,6,8),(6,16,6,8),(6,17,6,8),(6,18,6,8),(6,19,6,8),(6,20,6,8),(7,1,7,6),(7,2,8,4),(7,3,5,10),(7,4,7,6),(7,5,7,6),(7,6,7,6),(7,7,6,8),(7,8,9,2),(7,9,7,6),(7,10,7,6),(7,11,7,6),(7,12,6,8),(7,13,7,6),(7,14,7,6),(7,15,7,6),(7,16,7,6),(7,17,7,6),(7,18,7,6),(7,19,7,6),(7,20,7,6),(8,1,8,4),(8,2,9,2),(8,3,10,1),(8,4,8,4),(8,5,9,2),(8,6,8,4),(8,7,9,2),(8,8,8,4),(8,9,9,2),(8,10,8,4),(8,11,8,4),(8,12,8,4),(8,13,5,10),(8,14,6,4),(8,15,8,4),(8,16,8,4),(8,17,8,4),(8,18,8,4),(8,19,8,4),(8,20,8,4),(9,1,9,2),(9,2,10,1),(9,3,9,2),(9,4,9,2),(9,5,8,4),(9,6,10,1),(9,7,8,4),(9,8,10,1),(9,9,10,1),(9,10,5,10),(9,11,9,2),(9,12,9,2),(9,13,9,2),(9,14,8,2),(9,15,9,2),(9,16,9,2),(9,17,9,2),(9,18,9,2),(9,19,9,2),(9,20,9,2),(10,1,10,1),(10,2,7,6),(10,3,8,4),(10,4,10,1),(10,5,10,1),(10,6,9,2),(10,7,10,1),(10,8,7,6),(10,9,8,4),(10,10,9,2),(10,11,10,1),(10,12,10,1),(10,13,10,1),(10,14,10,1),(10,15,10,1),(10,16,10,1),(10,17,10,1),(10,18,10,1),(10,19,10,1),(10,20,10,1),(11,1,11,NULL),(11,2,12,NULL),(11,3,12,NULL),(11,4,11,NULL),(11,5,11,NULL),(11,6,11,NULL),(11,7,11,NULL),(11,8,11,NULL),(11,9,11,NULL),(11,10,11,NULL),(11,11,11,NULL),(11,12,11,NULL),(11,13,11,NULL),(11,14,11,NULL),(11,15,11,NULL),(11,16,11,NULL),(11,17,11,NULL),(11,18,11,NULL),(11,19,11,NULL),(11,20,11,NULL),(12,1,12,NULL),(12,2,13,NULL),(12,3,13,NULL),(12,4,12,NULL),(12,5,12,NULL),(12,6,12,NULL),(12,7,12,NULL),(12,8,12,NULL),(12,9,12,NULL),(12,10,12,NULL),(12,11,12,NULL),(12,12,12,NULL),(12,13,12,NULL),(12,14,12,NULL),(12,15,12,NULL),(12,16,12,NULL),(12,17,12,NULL),(12,18,12,NULL),(12,19,12,NULL),(12,20,12,NULL),(13,1,13,NULL),(13,2,14,NULL),(13,3,14,NULL),(13,4,13,NULL),(13,5,13,NULL),(13,6,13,NULL),(13,7,13,NULL),(13,8,13,NULL),(13,9,13,NULL),(13,10,13,NULL),(13,11,13,NULL),(13,12,13,NULL),(13,13,13,NULL),(13,14,13,NULL),(13,15,13,NULL),(13,16,13,NULL),(13,17,13,NULL),(13,18,13,NULL),(13,19,13,NULL),(13,20,13,NULL),(14,1,14,NULL),(14,2,15,NULL),(14,3,15,NULL),(14,4,14,NULL),(14,5,14,NULL),(14,6,14,NULL),(14,7,14,NULL),(14,8,14,NULL),(14,9,14,NULL),(14,10,14,NULL),(14,11,14,NULL),(14,12,14,NULL),(14,13,14,NULL),(14,14,14,NULL),(14,15,14,NULL),(14,16,14,NULL),(14,17,14,NULL),(14,18,14,NULL),(14,19,14,NULL),(14,20,14,NULL),(15,1,15,NULL),(15,2,16,NULL),(15,3,16,NULL),(15,4,15,NULL),(15,5,15,NULL),(15,6,15,NULL),(15,7,15,NULL),(15,8,15,NULL),(15,9,15,NULL),(15,10,15,NULL),(15,11,15,NULL),(15,12,15,NULL),(15,13,15,NULL),(15,14,15,NULL),(15,15,15,NULL),(15,16,15,NULL),(15,17,15,NULL),(15,18,15,NULL),(15,19,15,NULL),(15,20,15,NULL),(16,1,16,NULL),(16,2,17,NULL),(16,3,17,NULL),(16,4,16,NULL),(16,5,16,NULL),(16,6,16,NULL),(16,7,16,NULL),(16,8,16,NULL),(16,9,16,NULL),(16,10,16,NULL),(16,11,16,NULL),(16,12,16,NULL),(16,13,16,NULL),(16,14,16,NULL),(16,15,16,NULL),(16,16,16,NULL),(16,17,16,NULL),(16,18,16,NULL),(16,19,16,NULL),(16,20,16,NULL),(17,1,17,NULL),(17,2,18,NULL),(17,3,18,NULL),(17,4,17,NULL),(17,5,17,NULL),(17,6,17,NULL),(17,7,17,NULL),(17,8,17,NULL),(17,9,17,NULL),(17,10,17,NULL),(17,11,17,NULL),(17,12,17,NULL),(17,13,17,NULL),(17,14,17,NULL),(17,15,17,NULL),(17,16,17,NULL),(17,17,17,NULL),(17,18,17,NULL),(17,19,17,NULL),(17,20,17,NULL),(18,1,18,NULL),(18,2,19,NULL),(18,3,19,NULL),(18,4,18,NULL),(18,5,18,NULL),(18,6,18,NULL),(18,7,18,NULL),(18,8,18,NULL),(18,9,18,NULL),(18,10,18,NULL),(18,11,18,NULL),(18,12,18,NULL),(18,13,18,NULL),(18,14,18,NULL),(18,15,18,NULL),(18,16,18,NULL),(18,17,18,NULL),(18,18,18,NULL),(18,19,18,NULL),(18,20,18,NULL),(19,1,19,NULL),(19,2,20,NULL),(19,3,20,NULL),(19,4,19,NULL),(19,5,19,NULL),(19,6,19,NULL),(19,7,19,NULL),(19,8,19,NULL),(19,9,19,NULL),(19,10,19,NULL),(19,11,19,NULL),(19,12,19,NULL),(19,13,19,NULL),(19,14,19,NULL),(19,15,19,NULL),(19,16,19,NULL),(19,17,19,NULL),(19,18,19,NULL),(19,19,19,NULL),(19,20,19,NULL),(20,1,1,26),(20,2,3,15),(20,3,2,18),(20,4,1,26),(20,5,5,10),(20,6,6,8),(20,7,2,18),(20,8,3,15),(20,9,4,12),(20,10,2,18),(20,11,1,26),(20,12,3,15),(20,13,2,18),(20,14,1,26),(20,15,2,18),(20,16,3,15),(20,17,1,26),(20,18,1,26),(20,19,1,25),(20,20,1,25);
/*!40000 ALTER TABLE `Pilotos_has_Carrera` ENABLE KEYS */;
UNLOCK TABLES;

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
  `DoblesGanados` int DEFAULT NULL,
  `DoblesPerdidos` int DEFAULT NULL,
  PRIMARY KEY (`idTenistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tenistas`
--

LOCK TABLES `Tenistas` WRITE;
/*!40000 ALTER TABLE `Tenistas` DISABLE KEYS */;
INSERT INTO `Tenistas` VALUES (1,'Novak','Djokovic',3900,96,38,'986','237',37,1,50,10),(2,'Carlos','Alcaraz',5000,10,4,'140','45',21,2,15,5),(3,'Daniil','Medvedev',6500,20,6,'330','100',28,3,20,8),(4,'Rafael','Nadal',2500,92,38,'1050','220',38,5,45,12),(5,'Alexander','Zverev',4200,19,1,'340','150',26,4,10,3),(6,'Stefanos','Tsitsipas',4800,9,3,'150','55',25,6,30,7),(7,'Andrey','Rublev',4300,13,7,'200','70',26,8,12,4),(8,'Dominic','Thiem',3200,17,3,'220','90',30,10,18,5),(9,'Marin','Cilic',1500,18,3,'270','100',35,11,5,2),(10,'Fabio','Fognini',2000,9,9,'120','55',36,13,25,15),(11,'John','Isner',2100,16,8,'420','90',38,14,22,10),(12,'Gael','Monfils',1600,10,0,'500','200',37,17,8,4),(13,'Nick','Kyrgios',3500,6,3,'110','60',29,18,20,10),(14,'Kei','Nishikori',1800,12,2,'300','150',34,19,14,5),(15,'Borna','Coric',2200,5,2,'100','40',27,20,10,3),(16,'Diego','Schwartzman',2700,2,1,'110','30',31,22,12,3),(17,'Grigor','Dimitrov',2300,8,4,'180','70',32,23,16,7),(18,'Alex','de Minaur',3400,5,3,'120','50',25,15,11,4),(19,'Andreas','Seppi',1500,1,0,'450','150',39,26,2,1),(20,'Richard','Gasquet',1600,15,0,'350','120',38,24,9,5);
/*!40000 ALTER TABLE `Tenistas` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `jugadores_has_equipos`
--

LOCK TABLES `jugadores_has_equipos` WRITE;
/*!40000 ALTER TABLE `jugadores_has_equipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `jugadores_has_equipos` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'messi_olimpico.png','Messi lidera la selección argentina en los Juegos Olímpicos París 2024','Lionel Messi ha sido anunciado como el capitán de la selección argentina de fútbol para los Juegos Olímpicos de París 2024. El equipo está emocionado por la oportunidad de competir en el escenario internacional con su ic estrella.'),(2,'neymar_increible.png','Neymar da Silva rompe récords en la Copa América','Neymar da Silva ha establecido un nuevo récord de goles en la historia de la Copa América, llevando a Brasil a una victoria contundente en el torneo. Su rendimiento ha sido elogiado por expertos y fanáticos por igual.'),(3,'lebron_james_familia.png','LeBron James se convierte en el atleta más joven en alcanzar 40,000 puntos','LeBron James ha alcanzado un hito histórico en la NBA al convertirse en el atleta más joven en anotar 40,000 puntos en su carrera. Este logro destaca su longevidad y habilidad en el deporte del baloncesto.'),(4,'mbappe_victoria.png','Kylian Mbappé recibe el premio al Mejor Jugador del Año','Kylian Mbappé ha sido galardonado con el premio al Mejor Jugador del Año en los premios de fútbol, gracias a su destacada actuación durante la temporada. Su velocidad y técnica han sido fundamentales para su éxito.'),(5,'nadal_torneo.png','Rafael Nadal gana su 15º título de Grand Slam en Wimbledon','Rafael Nadal ha conquistado su 15º título de Grand Slam en Wimbledon, consolidando su lugar como uno de los mejores tenistas de todos los tiempos. Su dedicación y habilidades en la cancha siguen impresionando a todos.'),(6,'totti_retiro.png','Francesco Totti anuncia su retiro del fútbol profesional','Francesco Totti ha anunciado su retiro del fútbol profesional después de una carrera ilustre con la Roma. Su legado en el deporte y su lealtad a su club serán recordados por generaciones.'),(7,'neuer_seguridad.png','Manuel Neuer destaca como el mejor portero del año','Manuel Neuer ha sido nombrado el mejor portero del año en los premios de fútbol, gracias a sus actuaciones sobresalientes y su habilidad para mantener su portería a salvo en momentos críticos.'),(8,'kane_goleador.png','Harry Kane lidera la Premier League en goles','Harry Kane ha tomado la delantera en la tabla de goleadores de la Premier League con su impresionante rendimiento en la temporada. Su habilidad para encontrar el fondo de la red sigue siendo una constante amenaza para los defensores.'),(9,'yi_deportes.png','Yi Jinping promueve la expansión del deporte en China','Yi Jinping ha anunciado un nuevo programa para promover el desarrollo del deporte en China, con el objetivo de mejorar la infraestructura y apoyar a los jóvenes atletas en el país.'),(10,'francella_olimpico.png','Francella a participar de los Juegos Olímpicos Beijing 2038','El famoso actor y atleta argentino, Guillermo Francella, ha anunciado su participación en los Juegos Olímpicos de Beijing 2038. Francella, conocido por su carrera en el cine y la televisión, se está preparando para competir en una disciplina deportiva aún no revelada.');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25  7:45:22


INSERT INTO `Deporte` (`idDeporte`, `Nombre`, `Descripcion`) VALUES
(1, 'Atletismo', 'Carreras de velocidad, fondo, saltos y lanzamientos'),
(2, 'Natación', 'Competencia en estilos de natación: libre, espalda, pecho, y mariposa'),
(3, 'Fútbol', 'Juego de equipo de 11 jugadores que usan sus pies para pasar y disparar al gol'),
(4, 'Basketball', 'Juego de equipo de 5 jugadores donde intentan anotar en el aro contrario'),
(5, 'Judo', 'Deporte de combate de origen japonés que usa técnicas de agarre'),
(6, 'Boxeo', 'Deporte de combate donde los oponentes intentan golpear al otro con los puños'),
(7, 'Esgrima', 'Deporte de combate con espadas'),
(8, 'Tenis', 'Juego de raqueta en el que se juega en sencillos o dobles'),
(9, 'Gimnasia', 'Conjunto de ejercicios físicos que requieren equilibrio, fuerza y flexibilidad'),
(10, 'Remo', 'Deporte acuático que implica remar en botes'),
(11, 'Halterofilia', 'Levantamiento de pesas con varias categorías de peso'),
(12, 'Voleibol', 'Deporte de equipo que implica pasar una pelota sobre una red'),
(13, 'Ciclismo', 'Competencia de velocidad y resistencia en bicicletas'),
(14, 'Golf', 'Juego de precisión que se juega en un campo con hoyos'),
(15, 'Rugby', 'Deporte de contacto con un balón ovalado'),
(16, 'Patinaje', 'Competencias en pista o sobre hielo'),
(17, 'Tiro con Arco', 'Competencia de precisión con arco y flechas'),
(18, 'Esquí', 'Deporte de invierno en nieve, en descensos o en esquí de fondo'),
(19, 'Surf', 'Deporte acuático de montar olas en una tabla'),
(20, 'Equitación', 'Competencias de saltos y resistencia con caballos');

INSERT INTO `Atleta` (`idAtleta`, `Nombre`, `Apellido`, `Nacimiento`, `Imagen`, `Pais_idPais`) VALUES
(1, 'Juan', 'Pérez', '1995-06-12', 'juan_perez.png', 1),
(2, 'Carlos', 'Silva', '1991-03-15', 'carlos_silva.png', 2),
(3, 'María', 'Gómez', '1998-10-22', 'maria_gomez.png', 3),
(4, 'Ana', 'Martínez', '1997-04-28', 'ana_martinez.png', 4),
(5, 'Luis', 'Rodríguez', '1992-12-05', 'luis_rodriguez.png', 5),
(6, 'Gabriela', 'Torres', '1999-07-17', 'gabriela_torres.png', 6),
(7, 'Sofía', 'Flores', '2001-01-19', 'sofia_flores.png', 7),
(8, 'Daniel', 'Vega', '1993-05-09', 'daniel_vega.png', 8),
(9, 'Javier', 'Molina', '1994-11-30', 'javier_molina.png', 9),
(10, 'Carolina', 'Herrera', '1990-09-12', 'carolina_herrera.png', 10),
(11, 'Lucas', 'Pinto', '1995-02-18', 'lucas_pinto.png', 11),
(12, 'Martina', 'Ortiz', '1998-03-27', 'martina_ortiz.png', 12),
(13, 'Andrés', 'González', '1992-06-05', 'andres_gonzalez.png', 13),
(14, 'Claudia', 'Muñoz', '1996-08-10', 'claudia_munoz.png', 14),
(15, 'Emilio', 'Morales', '1999-04-22', 'emilio_morales.png', 15),
(16, 'Marta', 'Vargas', '1997-07-01', 'marta_vargas.png', 16),
(17, 'Fernando', 'Díaz', '2000-11-03', 'fernando_diaz.png', 17),
(18, 'Isabel', 'Peña', '1991-02-16', 'isabel_pena.png', 18),
(19, 'Natalia', 'Ramos', '1994-08-25', 'natalia_ramos.png', 19),
(20, 'Álvaro', 'Salazar', '1996-10-11', 'alvaro_salazar.png', 20);

INSERT INTO `Medalla` (`idMedalla`, `Tipo`, `Atleta_idAtleta`, `Deporte_idDeporte`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 2),
(4, 1, 4, 3),
(5, 1, 5, 4),
(6, 2, 6, 5),
(7, 3, 7, 6),
(8, 1, 8, 7),
(9, 2, 9, 8),
(10, 3, 10, 9),
(11, 1, 11, 10),
(12, 1, 12, 11),
(13, 2, 13, 12),
(14, 3, 14, 13),
(15, 1, 15, 14),
(16, 3, 16, 15),
(17, 2, 17, 16),
(18, 1, 18, 17),
(19, 3, 19, 18),
(20, 2, 20, 19),
(21, 1, 1, 20),
(22, 3, 2, 2),
(23, 2, 3, 1),
(24, 1, 4, 4),
(25, 3, 5, 5),
(26, 1, 6, 6),
(27, 2, 7, 7),
(28, 3, 8, 8),
(29, 1, 9, 9),
(30, 1, 10, 10),
(31, 2, 11, 11),
(32, 3, 12, 12),
(33, 1, 13, 13),
(34, 2, 14, 14),
(35, 3, 15, 15),
(36, 2, 16, 16),
(37, 1, 17, 17),
(38, 3, 18, 18),
(39, 1, 19, 19),
(40, 3, 20, 20);

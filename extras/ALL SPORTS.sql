-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema AllSports
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AllSports
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AllSports` ;
USE `AllSports` ;

-- -----------------------------------------------------
-- Table `AllSports`.`Futbol-jugadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Futbol-jugadores` (
  `idFútbol-jugadores` INT NOT NULL,
  `Goles` INT NULL,
  `Partidos-ganados` INT NULL,
  `Partidos-perdidos` INT NULL,
  `Partidos-jugados` INT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Foto` VARCHAR(45) NULL,
  PRIMARY KEY (`idFútbol-jugadores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Futbol-torneos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Futbol-torneos` (
  `idFutbol-torneos` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Fecha` DATE NULL,
  `Logo` VARCHAR(45) NULL,
  PRIMARY KEY (`idFutbol-torneos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Futbol-equipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Futbol-equipos` (
  `idFutbol-equipos` INT NOT NULL,
  `Escudo` VARCHAR(45) NULL,
  `Nombre` VARCHAR(45) NULL,
  `G` INT NULL,
  `P` INT NULL,
  `GD` INT NULL,
  `Puntos` INT NULL,
  `Local` INT NULL,
  `Vis` INT NULL,
  `Div` INT NULL,
  `Conf` INT NULL,
  `PPA` INT NULL,
  `PPP` INT NULL,
  `R` INT NULL,
  `U10` INT NULL,
  PRIMARY KEY (`idFutbol-equipos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Futbol-equipos_has_Futbol-torneos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Futbol-equipos_has_Futbol-torneos` (
  `Futbol-torneos_idFutbol-torneos` INT NOT NULL,
  `Partidos-jugados` INT NULL,
  `Partidos-empatados` INT NULL,
  `Partidos-ganados` INT NULL,
  `Partidos-perdidos` INT NULL,
  `Goles-a-Favor` INT NULL,
  `Goles-en-Contra` INT NULL,
  `Puntos` INT NULL,
  `Futbol-equipos_idFutbol-equipos` INT NOT NULL,
  PRIMARY KEY (`Futbol-torneos_idFutbol-torneos`, `Futbol-equipos_idFutbol-equipos`),
  INDEX `fk_Futbol-equipos_has_Futbol-torneos_Futbol-torneos1_idx` (`Futbol-torneos_idFutbol-torneos` ASC) VISIBLE,
  INDEX `fk_Futbol-equipos_has_Futbol-torneos_Futbol-equipos1_idx` (`Futbol-equipos_idFutbol-equipos` ASC) VISIBLE,
  CONSTRAINT `fk_Futbol-equipos_has_Futbol-torneos_Futbol-torneos1`
    FOREIGN KEY (`Futbol-torneos_idFutbol-torneos`)
    REFERENCES `AllSports`.`Futbol-torneos` (`idFutbol-torneos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Futbol-equipos_has_Futbol-torneos_Futbol-equipos1`
    FOREIGN KEY (`Futbol-equipos_idFutbol-equipos`)
    REFERENCES `AllSports`.`Futbol-equipos` (`idFutbol-equipos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Peleadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Peleadores` (
  `idPeleadores` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `record` VARCHAR(45) NULL,
  `division` VARCHAR(45) NULL,
  `Victorias` INT NULL,
  `Derrotas` INT NULL,
  `Peleas` INT NULL,
  `posicion_division` INT NULL,
  `posicionP4P` INT NULL,
  `foto` VARCHAR(45) NULL,
  `KO` INT NULL,
  `SUM` INT NULL,
  `Desiciones` INT NULL,
  `victorias_titulo` INT NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`idPeleadores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`noticias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`noticias` (
  `idnoticias` INT NOT NULL,
  `img` VARCHAR(45) NULL,
  `titulo` VARCHAR(450) NULL,
  `nbody` VARCHAR(1638) NULL,
  PRIMARY KEY (`idnoticias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Pilotos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Pilotos` (
  `idPilotos` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `constructora` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NULL,
  `foto` VARCHAR(45) NULL,
  PRIMARY KEY (`idPilotos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Carrera` (
  `idCarrera` INT NOT NULL,
  `ubicacion` VARCHAR(45) NULL,
  `nombre` VARCHAR(45) NULL,
  `circuito` VARCHAR(45) NULL,
  PRIMARY KEY (`idCarrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Pilotos_has_Carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Pilotos_has_Carrera` (
  `Pilotos_idPilotos` INT NOT NULL,
  `Carrera_idCarrera` INT NOT NULL,
  `Posicion` INT NULL,
  `puntos` INT NULL,
  PRIMARY KEY (`Pilotos_idPilotos`, `Carrera_idCarrera`),
  INDEX `fk_Pilotos_has_Carrera_Carrera1_idx` (`Carrera_idCarrera` ASC) VISIBLE,
  INDEX `fk_Pilotos_has_Carrera_Pilotos1_idx` (`Pilotos_idPilotos` ASC) VISIBLE,
  CONSTRAINT `fk_Pilotos_has_Carrera_Pilotos1`
    FOREIGN KEY (`Pilotos_idPilotos`)
    REFERENCES `AllSports`.`Pilotos` (`idPilotos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pilotos_has_Carrera_Carrera1`
    FOREIGN KEY (`Carrera_idCarrera`)
    REFERENCES `AllSports`.`Carrera` (`idCarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Tenistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Tenistas` (
  `idTenistas` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `puntos` INT NULL,
  `titulosSingle` INT NULL,
  `titulosDobles` INT NULL,
  `SinglesGanados` VARCHAR(45) NULL,
  `SinglesPerdidos` VARCHAR(45) NULL,
  `edad` INT NULL,
  `posicion` INT NULL,
  PRIMARY KEY (`idTenistas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`jugadores_has_equipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`jugadores_has_equipos` (
  `Futbol-jugadores_idFutbol-jugadores` INT NOT NULL,
  `Futbol-equipos_idFutbol-equipos` INT NOT NULL,
  `Goles` INT NULL,
  `Partidos-jugados` INT NULL,
  `Partidos-ganados` INT NULL,
  `Partidos-perdidos` INT NULL,
  PRIMARY KEY (`Futbol-jugadores_idFutbol-jugadores`, `Futbol-equipos_idFutbol-equipos`),
  INDEX `fk_Futbol-jugadores_has_Futbol-equipos1_Futbol-equipos1_idx` (`Futbol-equipos_idFutbol-equipos` ASC) VISIBLE,
  INDEX `fk_Futbol-jugadores_has_Futbol-equipos1_Futbol-jugadores1_idx` (`Futbol-jugadores_idFutbol-jugadores` ASC) VISIBLE,
  CONSTRAINT `fk_Futbol-jugadores_has_Futbol-equipos1_Futbol-jugadores1`
    FOREIGN KEY (`Futbol-jugadores_idFutbol-jugadores`)
    REFERENCES `AllSports`.`Futbol-jugadores` (`idFútbol-jugadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Futbol-jugadores_has_Futbol-equipos1_Futbol-equipos1`
    FOREIGN KEY (`Futbol-equipos_idFutbol-equipos`)
    REFERENCES `AllSports`.`Futbol-equipos` (`idFutbol-equipos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Pais` (
  `idPais` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Bandera` VARCHAR(45) NULL,
  PRIMARY KEY (`idPais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Atleta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Atleta` (
  `idAtleta` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Nacimiento` VARCHAR(45) NULL,
  `Imagen` VARCHAR(45) NULL,
  `Pais_idPais` INT NOT NULL,
  PRIMARY KEY (`idAtleta`),
  INDEX `fk_Atleta_Pais1_idx` (`Pais_idPais` ASC) VISIBLE,
  CONSTRAINT `fk_Atleta_Pais1`
    FOREIGN KEY (`Pais_idPais`)
    REFERENCES `AllSports`.`Pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Deporte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Deporte` (
  `idDeporte` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(450) NULL,
  PRIMARY KEY (`idDeporte`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AllSports`.`Medalla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AllSports`.`Medalla` (
  `idMedalla` INT NOT NULL,
  `Tipo` INT NULL,
  `Atleta_idAtleta` INT NOT NULL,
  `Deporte_idDeporte` INT NOT NULL,
  PRIMARY KEY (`idMedalla`),
  INDEX `fk_Medalla_Atleta1_idx` (`Atleta_idAtleta` ASC) VISIBLE,
  INDEX `fk_Medalla_Deporte1_idx` (`Deporte_idDeporte` ASC) VISIBLE,
  CONSTRAINT `fk_Medalla_Atleta1`
    FOREIGN KEY (`Atleta_idAtleta`)
    REFERENCES `AllSports`.`Atleta` (`idAtleta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Medalla_Deporte1`
    FOREIGN KEY (`Deporte_idDeporte`)
    REFERENCES `AllSports`.`Deporte` (`idDeporte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

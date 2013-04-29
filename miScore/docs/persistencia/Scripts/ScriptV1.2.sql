SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `miScore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Equipo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Equipo` (
  `idEquipo` INT NOT NULL AUTO_INCREMENT ,
  `nombreEquipo` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`idEquipo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Torneo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Torneo` (
  `idTorneo` INT NOT NULL AUTO_INCREMENT ,
  `nombreTorneo` VARCHAR(45) NOT NULL ,
  `estadoTorneo` TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (`idTorneo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Torneo_has_Equipo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Torneo_has_Equipo` (
  `Torneo_idTorneo` INT NOT NULL ,
  `Equipo_idEquipo` INT NOT NULL ,
  PRIMARY KEY (`Torneo_idTorneo`, `Equipo_idEquipo`) ,
  INDEX `fk_Torneo_has_Equipo_Equipo1_idx` (`Equipo_idEquipo` ASC) ,
  INDEX `fk_Torneo_has_Equipo_Torneo_idx` (`Torneo_idTorneo` ASC) ,
  CONSTRAINT `fk_Torneo_has_Equipo_Torneo`
    FOREIGN KEY (`Torneo_idTorneo` )
    REFERENCES `mydb`.`Torneo` (`idTorneo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Torneo_has_Equipo_Equipo1`
    FOREIGN KEY (`Equipo_idEquipo` )
    REFERENCES `mydb`.`Equipo` (`idEquipo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

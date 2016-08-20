-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema lending
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lending
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lending` DEFAULT CHARACTER SET latin1 ;
USE `lending` ;

-- -----------------------------------------------------
-- Table `lending`.`borrowers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lending`.`borrowers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `money` INT(11) NOT NULL,
  `purpose` VARCHAR(200) NOT NULL,
  `description` TEXT NOT NULL,
  `raised` INT(11) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `lending`.`lenders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lending`.`lenders` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` INT(11) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `money` INT(11) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `lending`.`histories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lending`.`histories` (
  `id` INT(11) NOT NULL,
  `amount` INT(11) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `lender_id` INT(11) NOT NULL,
  `borrower_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_histories_lenders_idx` (`lender_id` ASC),
  INDEX `fk_histories_borrowers1_idx` (`borrower_id` ASC),
  CONSTRAINT `fk_histories_lenders`
    FOREIGN KEY (`lender_id`)
    REFERENCES `lending`.`lenders` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_histories_borrowers1`
    FOREIGN KEY (`borrower_id`)
    REFERENCES `lending`.`borrowers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

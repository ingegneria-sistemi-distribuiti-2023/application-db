
CREATE SCHEMA IF NOT EXISTS `applicationdb` DEFAULT CHARACTER SET utf8 ;
USE `applicationdb` ;

-- -----------------------------------------------------
-- Table `applicationdb`.`placed_bets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `applicationdb`.`placed_bets` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `amount` INT UNSIGNED NOT NULL,
  `currency` VARCHAR(15) NOT NULL,
  `status` VARCHAR(15) NOT NULL,
  `ts` BIGINT(19) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
  )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `applicationdb`.`matches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `applicationdb`.`matches` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `placed_bet` INT UNSIGNED NOT NULL,
  `match_id` INT UNSIGNED NOT NULL,
  `outcome` VARCHAR(15) NOT NULL,
  `quote` DOUBLE UNSIGNED NOT NULL,
  `ts` BIGINT(19) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
CONSTRAINT `placed_bet_id` FOREIGN KEY (`placed_bet`) REFERENCES `applicationdb`.`placed_bets`(`id`)
  
  )
  
ENGINE = InnoDB;



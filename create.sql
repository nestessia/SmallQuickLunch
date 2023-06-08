SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Покупатели`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Покупатели` (
  `id_customer` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `created` DATETIME NOT NULL,
  `sex` VARCHAR(45) NULL,
  `phone` INT NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `id_customer_UNIQUE` (`id_customer` ASC) VISIBLE,
  PRIMARY KEY (`id_customer`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Транспорт`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Транспорт` (
  `id_vehicles` INT NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(45) NOT NULL,
  `numbers` VARCHAR(10) NULL,
  UNIQUE INDEX `id_vehicles_UNIQUE` (`id_vehicles` ASC) VISIBLE,
  PRIMARY KEY (`id_vehicles`),
  UNIQUE INDEX `numbers_UNIQUE` (`numbers` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Курьеры`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Курьеры` (
  `id_courier` INT NOT NULL AUTO_INCREMENT,
  `id_vehicles` INT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone` INT NOT NULL,
  PRIMARY KEY (`id_courier`, `id_vehicles`),
  UNIQUE INDEX `id_courier_UNIQUE` (`id_courier` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
  UNIQUE INDEX `id_vehicles_UNIQUE` (`id_vehicles` ASC) VISIBLE,
  CONSTRAINT `id_vehicles`
    FOREIGN KEY (`id_vehicles`)
    REFERENCES `mydb`.`Транспорт` (`id_vehicles`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Доставка`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Доставка` (
  `id_delivery` INT NOT NULL,
  `id_courier` INT NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`id_delivery`, `id_courier`),
  INDEX `courier_idx` (`id_courier` ASC) VISIBLE,
  CONSTRAINT `courier`
    FOREIGN KEY (`id_courier`)
    REFERENCES `mydb`.`Курьеры` (`id_courier`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Сотрудники`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Сотрудники` (
  `id_employee` INT NOT NULL AUTO_INCREMENT,
  `fio` VARCHAR(60) NOT NULL,
  `position` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_employee`),
  UNIQUE INDEX `id_employee_UNIQUE` (`id_employee` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Заказы`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Заказы` (
  `id_order` INT NOT NULL AUTO_INCREMENT,
  `id_customer` INT NOT NULL,
  `id_delivery` INT NOT NULL,
  `id_respons_employee` INT NOT NULL,
  `OrderDatTime` DATETIME NOT NULL,
  `order_status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`),
  UNIQUE INDEX `id_order_UNIQUE` (`id_order` ASC) VISIBLE,
  UNIQUE INDEX `id_customer_UNIQUE` (`id_customer` ASC) VISIBLE,
  INDEX `delivery_idx` (`id_delivery` ASC) VISIBLE,
  INDEX `responsible_employee_idx` (`id_respons_employee` ASC) VISIBLE,
  CONSTRAINT `customer_for_order`
    FOREIGN KEY (`id_customer`)
    REFERENCES `mydb`.`Покупатели` (`id_customer`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `delivery`
    FOREIGN KEY (`id_delivery`)
    REFERENCES `mydb`.`Доставка` (`id_delivery`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `responsible_employee`
    FOREIGN KEY (`id_respons_employee`)
    REFERENCES `mydb`.`Сотрудники` (`id_employee`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Поставщик`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Поставщик` (
  `id_supplier` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_supplier`),
  UNIQUE INDEX `id_supplier_UNIQUE` (`id_supplier` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `address_UNIQUE` (`address` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Склад`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Склад` (
  `id_warehouse` INT NOT NULL AUTO_INCREMENT,
  `Location` VARCHAR(255) NOT NULL,
  `Capacity` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_warehouse`),
  UNIQUE INDEX `id_warehouse_UNIQUE` (`id_warehouse` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Категория товара`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Категория товара` (
  `id_category` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_category`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Товар`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Товар` (
  `id_product` INT NOT NULL AUTO_INCREMENT,
  `id_warehouse` INT NOT NULL,
  `id_supplier` INT NOT NULL,
  `id_order` INT NULL,
  `id_category` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `expiration_date` DATETIME NULL,
  `price` INT NOT NULL,
  `img` LONGBLOB NOT NULL,
  PRIMARY KEY (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`),
  UNIQUE INDEX `id_products_UNIQUE` (`id_product` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  INDEX `supplier_idx` (`id_supplier` ASC) VISIBLE,
  INDEX `warehouse_idx` (`id_warehouse` ASC) VISIBLE,
  INDEX `basket_idx` (`id_order` ASC) VISIBLE,
  INDEX `category_idx` (`id_category` ASC) VISIBLE,
  CONSTRAINT `supplier`
    FOREIGN KEY (`id_supplier`)
    REFERENCES `mydb`.`Поставщик` (`id_supplier`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `warehouse`
    FOREIGN KEY (`id_warehouse`)
    REFERENCES `mydb`.`Склад` (`id_warehouse`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `basket`
    FOREIGN KEY (`id_order`)
    REFERENCES `mydb`.`Заказы` (`id_order`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `category`
    FOREIGN KEY (`id_category`)
    REFERENCES `mydb`.`Категория товара` (`id_category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


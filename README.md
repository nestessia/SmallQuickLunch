# SmallQuickLunch
_Крючкова Анастасия Сергеевна & Зухир Амира Саидовна ИВТ 2-1_

__Тема__: База данных онлайн магазина продуктов Small Quick Lunch

## О базе:

В нашей базе данных есть страничка пользователя, в которой указывается имя, фамилия, пол, адрес, мобильный телефон и почта. 

Есть информация о продуктах, в которой указывается название продукта, его описание, срок годности и цена.

Есть информация о заказе: какой покупатель сделал его и дата.

Аналогично есть есть данные о доставке: информация о доставляющем курьере и дата доставки.

Есть данные о курьерах: ФИО, мобильный телефон. У каждого курьера свой собственный способ доставки заказа, свое собственное средство передвижения, либо его отсутствие (доставка пешком).

## Почему именно MySql Workbench?

MySQL Workbench предоставляет мощную и эффективную среду для проектирования, управления и документирования баз данных MySQL.

__Удобный интерфейс:__ MySQL Workbench предоставляет удобный и интуитивно понятный интерфейс, который позволяет вам визуально проектировать и изменять схему вашей базы данных. Он предлагает функциональность перетаскивания, упрощающую создание таблиц, определение связей и управление объектами базы данных.

__Визуальный дизайн базы данных:__ С помощью MySQL Workbench вы можете визуально спроектировать схему своей базы данных, используя диаграмму entity-relationship (ER). Это графическое представление поможет вам лучше понять структуру вашей базы данных и взаимосвязи между таблицами.

__Синхронизация схемы:__ Workbench позволяет синхронизировать схему вашей базы данных с реальной базой данных, что упрощает применение любых изменений, внесенных вами в схему, к самой базе данных. Это помогает поддерживать согласованность и гарантирует, что база данных точно отражает дизайн.

__Разработка и оптимизация запросов:__ MySQL Workbench предоставляет встроенный редактор SQL, который позволяет вам писать и выполнять запросы непосредственно в инструменте. Он также предлагает инструменты профилирования запросов и оптимизации, помогающие вам идентифицировать и повышать производительность ваших SQL-запросов.

__Моделирование данных и документация:__ Workbench поддерживает прямое и обратное проектирование, позволяя создавать визуальную модель данных из существующей базы данных или генерировать схему базы данных на основе модели. Он также предоставляет функции документирования, которые позволяют вам создавать подробные отчеты о вашей схеме базы данных.

## Какую БД мы использовали? 
__Реляционная.__
Основное преимущество реляционных баз данных заключается в том, что они позволяют пользователям легко классифицировать и хранить данные, которые впоследствии могут быть запрошены и отфильтрованы для извлечения конкретной информации. Благодаря им можно хранить большие объемы информации и легко комбинировать различные данные между собой. 

## ER-диаграмма
![Диаграмма](https://github.com/nestessia/SmallQuickLunch/assets/99599865/136cc315-7528-4231-af97-3d12a6540553)

## Нормализация
Нормализация — это процесс организации данных в базе данных, включающий создание таблиц и установление отношений между ними в соответствии с правилами, которые обеспечивают защиту данных и делают базу данных более гибкой, устраняя избыточность и несогласованные зависимости.

```
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
  `id_vehicles` INT NOT NULL,
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
  `payment` TINYINT NOT NULL,
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
-- Table `mydb`.`Товар`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Товар` (
  `id_product` INT NOT NULL AUTO_INCREMENT,
  `id_warehouse` INT NOT NULL,
  `id_supplier` INT NOT NULL,
  `id_order` INT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `expiration_date` DATETIME NULL,
  `price` INT NOT NULL,
  `img` LONGBLOB NOT NULL,
  PRIMARY KEY (`id_product`, `id_warehouse`, `id_supplier`, `id_order`),
  UNIQUE INDEX `id_products_UNIQUE` (`id_product` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  INDEX `supplier_idx` (`id_supplier` ASC) VISIBLE,
  INDEX `warehouse_idx` (`id_warehouse` ASC) VISIBLE,
  INDEX `basket_idx` (`id_order` ASC) VISIBLE,
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
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `mydb` ;

-- -----------------------------------------------------
-- Placeholder table for view `mydb`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `mydb`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`view1`;
USE `mydb`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
```

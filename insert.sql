-- -----------------------------------------------------
-- Data for table `mydb`.`Покупатели`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Покупатели` (`id_customer`, `first_name`, `last_name`, `created`, `sex`, `phone`, `address`, `email`) VALUES (1, 'Денис', 'Каргаполов', DEFAULT, 'F', 79951488, DEFAULT, 'deniska@rediska.com');
INSERT INTO `mydb`.`Покупатели` (`id_customer`, `first_name`, `last_name`, `created`, `sex`, `phone`, `address`, `email`) VALUES (2, 'Амира', 'Зухир', DEFAULT, 'F', 76666666, 'ул.Марокканская', 'amiro4ka_not_haram@notdog.com');
INSERT INTO `mydb`.`Покупатели` (`id_customer`, `first_name`, `last_name`, `created`, `sex`, `phone`, `address`, `email`) VALUES (3, 'Владик', 'Воложанчик', DEFAULT, 'M', 777766680, 'пр.Пофигистов', 'kachok@gym.com');
INSERT INTO `mydb`.`Покупатели` (`id_customer`, `first_name`, `last_name`, `created`, `sex`, `phone`, `address`, `email`) VALUES (4, 'Анастасия', 'Крючкова', DEFAULT, 'F', 789088878, 'ул.Душная', 'fortochka@closed.com');
INSERT INTO `mydb`.`Покупатели` (`id_customer`, `first_name`, `last_name`, `created`, `sex`, `phone`, `address`, `email`) VALUES (5, 'Майке', 'Чен', DEFAULT, 'F', 778908728, 'ул.Китайская', 'wahaha@haha.ru');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Транспорт`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Транспорт` (`id_vehicles`, `category`, `numbers`) VALUES (1, 'метла', 'ММ543');
INSERT INTO `mydb`.`Транспорт` (`id_vehicles`, `category`, `numbers`) VALUES (2, 'самокат', 'СС342');
INSERT INTO `mydb`.`Транспорт` (`id_vehicles`, `category`, `numbers`) VALUES (3, 'электроамокат', 'ЭС234');
INSERT INTO `mydb`.`Транспорт` (`id_vehicles`, `category`, `numbers`) VALUES (4, 'велосипед', 'ВВ34');
INSERT INTO `mydb`.`Транспорт` (`id_vehicles`, `category`, `numbers`) VALUES (5, 'велосипед', 'ВВ35');
INSERT INTO `mydb`.`Транспорт` (`id_vehicles`, `category`, `numbers`) VALUES (6, 'автомобиль', 'АВ23');
INSERT INTO `mydb`.`Транспорт` (`id_vehicles`, `category`, `numbers`) VALUES (7, 'автомобиль', 'АВ53');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Курьеры`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Курьеры` (`id_courier`, `id_vehicles`, `name`, `phone`) VALUES (11, 1, 'Настюшка', +7924543634);
INSERT INTO `mydb`.`Курьеры` (`id_courier`, `id_vehicles`, `name`, `phone`) VALUES (22, 2, 'Баба-Яга', +7922633678);
INSERT INTO `mydb`.`Курьеры` (`id_courier`, `id_vehicles`, `name`, `phone`) VALUES (33, 3, 'Дениска', +7924543268);
INSERT INTO `mydb`.`Курьеры` (`id_courier`, `id_vehicles`, `name`, `phone`) VALUES (44, 4, 'Владик', +7924541053);
INSERT INTO `mydb`.`Курьеры` (`id_courier`, `id_vehicles`, `name`, `phone`) VALUES (55, 5, 'Рамаз', +7924543090);
INSERT INTO `mydb`.`Курьеры` (`id_courier`, `id_vehicles`, `name`, `phone`) VALUES (66, 6, 'Парвоз', +7924543222);
INSERT INTO `mydb`.`Курьеры` (`id_courier`, `id_vehicles`, `name`, `phone`) VALUES (77, 7, 'Антон', +7924543432);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Доставка`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (1, 22, '10.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (2, 22, '11.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (3, 55, '11.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (4, 44, '11.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (5, 66, '12.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (6, 66, '12.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (7, 77, '12.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (8, 77, '13.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (9, 11, '13.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (10, 33, '13.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (11, 11, '13.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (12, 22, '13.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (13, 33, '14.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (14, 44, '14.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (15, 55, '14.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (16, 66, '15.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (17, 77, '15.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (18, 11, '16.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (19, 22, '16.04.2015');
INSERT INTO `mydb`.`Доставка` (`id_delivery`, `id_courier`, `date`) VALUES (20, 33, '18.04.2015');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Сотрудники`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Сотрудники` (`id_employee`, `fio`, `position`) VALUES (321, 'Тряпкова Евгения Прекрасновна', 'собиратель заказов');
INSERT INTO `mydb`.`Сотрудники` (`id_employee`, `fio`, `position`) VALUES (322, 'Клавиатура Анастасия Бегемотовна', 'собиратель заказов');
INSERT INTO `mydb`.`Сотрудники` (`id_employee`, `fio`, `position`) VALUES (323, 'Кабель Денис Трешович', 'собиратель заказов');
INSERT INTO `mydb`.`Сотрудники` (`id_employee`, `fio`, `position`) VALUES (324, 'Спорт Владислав Надоедович', 'зам.директора');
INSERT INTO `mydb`.`Сотрудники` (`id_employee`, `fio`, `position`) VALUES (325, 'Суровая Амира Милашовна', 'Ген-директор');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Заказы`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (1, 1, 1, 321, '01-05-2014 ', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (2, 1, 2, 321, '27.07.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (3, 2, 3, 321, '06.12.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (4, 2, 4, 321, '07.12.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (5, 3, 5, 321, '07.01.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (6, 3, 6, 322, '10.02.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (7, 4, 7, 322, '10.02.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (8, 4, 8, 322, '10.02.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (9, 5, 9, 322, '13.02.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (10, 5, 10, 322, '14.02.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (11, 6, 11, 323, '15.02.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (12, 6, 12, 323, '16.02.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (13, 7, 13, 323, '13.04.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (14, 7, 14, 323, '17.04.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (15, 8, 15, 322, '25.02.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (16, 8, 16, 322, '04.05.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (17, 9, 17, 321, '10.05.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (18, 9, 18, 321, '17.05.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (19, 10, 19, 321, '17.06.2014', 'получен');
INSERT INTO `mydb`.`Заказы` (`id_order`, `id_customer`, `id_delivery`, `id_respons_employee`, `OrderDatTime`, `order_status`) VALUES (20, 10, 10, 321, '07.07.2014', 'получен');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Поставщик`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Поставщик` (`id_supplier`, `name`, `description`, `address`) VALUES (1, 'Мвидео', 'бытовая техника', 'Где-то в Москве');
INSERT INTO `mydb`.`Поставщик` (`id_supplier`, `name`, `description`, `address`) VALUES (2, 'Садовод', 'выпечка и молочка', 'Где-то за Москвой');
INSERT INTO `mydb`.`Поставщик` (`id_supplier`, `name`, `description`, `address`) VALUES (3, 'ООО \"ООО\"', 'яица', 'Владивосток');
INSERT INTO `mydb`.`Поставщик` (`id_supplier`, `name`, `description`, `address`) VALUES (4, 'Рыбка-за-деньги', 'рыба и морские гадости', 'Япония');
INSERT INTO `mydb`.`Поставщик` (`id_supplier`, `name`, `description`, `address`) VALUES (5, 'Самсунг', 'техника', 'Южная Корея');
INSERT INTO `mydb`.`Поставщик` (`id_supplier`, `name`, `description`, `address`) VALUES (6, 'Big Clean', 'химия', 'рядом с Садоводом');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Склад`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Склад` (`id_warehouse`, `Location`, `Capacity`) VALUES (111, 'Петроградка', '50га');
INSERT INTO `mydb`.`Склад` (`id_warehouse`, `Location`, `Capacity`) VALUES (222, 'Васька', '200га');
INSERT INTO `mydb`.`Склад` (`id_warehouse`, `Location`, `Capacity`) VALUES (333, 'Комменда', '250га');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Категория товара`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (543, 'Фрукты', 'различные фрукты, от яблок до глаза дракона');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (345, 'Овощи', 'картофель, морковь, лук и что-то еще');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (234, 'Бытовая химия', 'Мистер пропер, Ариель, Тайд ');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (98, 'Бытовая техника', 'Самсунг, Ксиаоми, Элджи. (Эпл нет! не любим такое)');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (567, 'Молочка', 'Молоко, кефир, ряженка');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (5, 'Мучные изделия', 'злеб, булочки, пирожки');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (343, 'Напитки', 'вода, лимонад, сок. (Алкоголь не продаем!!)');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (2, 'Готовая еда', 'Бургеры, готовые салаты ...');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (346, 'Мясо и птица', 'Говядина, курица, индейка, телятина. (Свинины нет!!!)');
INSERT INTO `mydb`.`Категория товара` (`id_category`, `name`, `description`) VALUES (989, 'Рыба и дары моря', 'Красная рыба, белая рыба и морские гадости');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Товар`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (1, 111, 1, 5, 543, 'Яблоки', 'Антоновки 3кг', '01.01.2999', 250);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (2, 222, 3, 4, 345, 'картошка', 'белорусская', '01.01.2999', 100);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (3, 111, 4, 3, 234, 'Мистер мускул', 'свой, родной', '01.01.2999', 399);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (4, 333, 2, 2, 98, 'Пылесос', 'без комментариев', '01.01.2999', 50000);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (5, 333, 5, 1, 567, 'Молоко', 'коровье', '01.01.2999', 200);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (6, 222, 6, 5, 5, 'булочка', 'с маком', '01.01.2999', 43);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (7, 111, 4, 5, 343, 'вода', 'минеральная', '01.01.2999', 100);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (8, 333, 3, 8, 2, 'бургер', 'из бургер кинга', '01.01.2999', 399);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (9, 222, 2, 3, 346, 'говядина', 'халяль', '01.01.2999', 500);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (10, 222, 5, 4, 989, 'форель', 'для богатых', '01.01.2999', 2999);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (11, 111, 1, 4, 543, 'Груши', 'вкусные', '01.01.2999', 350);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (12, 222, 2, 4, 345, 'морковь', 'наша', '01.01.2999', 80);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (13, 333, 3, 7, 234, 'Белизна', 'выбели всё', '01.01.2999', 267);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (14, 111, 4, 7, 98, 'компьютер', 'пора работать', '01.01.2999', 79000);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (15, 222, 5, 11, 567, 'кефир', 'свой', '01.01.2999', 98);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (16, 333, 1, 13, 5, 'пирожок', ' с картошкой', '01.01.2999', 34);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (17, 111, 2, 13, 343, 'энергетик', 'а как без него сессию закрыть', '01.01.2999', 150);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (18, 222, 3, 14, 2, 'сэндвич', 'из сабвэй', '01.01.2999', 350);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (19, 333, 4, 14, 346, 'баранина', 'халяль', '01.01.2999', 399);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (20, 111, 5, 15, 989, 'кальмары', 'вкусные', '01.01.2999', 599);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (21, 222, 6, 16, 543, 'бананы', 'африканские', '01.01.2999', 400);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (22, 333, 1, 17, 345, 'лук', 'красный', '01.01.2999', 50);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (23, 111, 2, 17, 234, 'Fairy', 'помой уже посуду', '01.01.2999', 250);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (24, 222, 3, 17, 98, 'Мышь', 'компьютерная', '01.01.2999', 2500);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (25, 333, 4, 18, 567, 'Айран', 'не наш', '01.01.2999', 99);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (26, 111, 5, 18, 5, 'хлеб', 'с отрубями', '01.01.2999', 150);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (27, 222, 6, 18, 343, 'буратино', 'лимонад нашего детства', '01.01.2999', 69);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (28, 333, 1, 19, 2, 'суши', 'токио-сити', '01.01.2999', 499);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (29, 111, 2, 19, 346, 'курица', 'халяль', '01.01.2999', 359);
INSERT INTO `mydb`.`Товар` (`id_product`, `id_warehouse`, `id_supplier`, `id_order`, `id_category`, `name`, `description`, `expiration_date`, `price`) VALUES (30, 222, 3, 20, 989, 'устрицы', 'с финского залива', '01.01.2999', 5999);

COMMIT;

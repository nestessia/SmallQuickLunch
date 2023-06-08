# SmallQuickLunch
_Крючкова Анастасия Сергеевна & Зухир Амира Саидовна ИВТ 2-1_

__Тема__: База данных онлайн магазина продуктов Small Quick Lunch
Наша организация
## О базе:
Наша база состоит из 10 сущностей.
 1. Данные о покупатеях.
       - Фамилия
       - Имя
       - Дата создания аккаунта
       - Пол
       - Мобильный телефон
       - Адрес
       - Почта
 2. Данные о заказах.
       - Дата формирования заказа
       - Статус заказа
       - Цена
 3. Данные о сотрудниках.
       - ФИО
       - Должность
 4. Данные о товаре.
       - Наименование
       - Описание
       - Дата конца срока годности
       - Цена
       - Изображение
 5. Данные о категории товара.
       - Название
       - Описание
 6. Данные о складе.
       - Название
       - Местоположение
       - Вместимость
 7. Данные о поставщике.
       - Название
       - Описание
       - Адрес
 8. Данные о доставке.
       - Дата доставки
 9. Данные о курьере.
       - ФИО
       - Мобильный телефон
 10. Данные о транспорте.
       - Тип транспорта. Это может быть самокат, электросамокат, автомобиль или велосипед.
       - Номера транспорта. Могут отсутствовать, если курьер доставляет заказ на обычном самокате

## ER-диаграмма
![Диаграмма](https://github.com/nestessia/SmallQuickLunch/assets/99599865/742905ce-e23a-4e67-b934-8ddde61aaff1)

## Связи


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

## Нормализация
Нормализация — это процесс организации данных в базе данных, включающий создание таблиц и установление отношений между ними в соответствии с правилами, которые обеспечивают защиту данных и делают базу данных более гибкой, устраняя избыточность и несогласованные зависимости.

## [Запрос](https://github.com/nestessia/SmallQuickLunch/blob/main/create.sql) на создание



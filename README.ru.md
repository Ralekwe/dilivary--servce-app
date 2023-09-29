# delivery-service-csharp 

Доступно на других языках: [English/Английский](README.md), [Russian/Русский](README.ru.md). 

Сервис доставки еды

## Требования к системе и её описание 

### Описание системы

- Высоконагруженная система: каждый элемент системы должен быть способен выдержать нагрузку до 5 тыс. запросов в секунду на запись и чтение.
- Виды клиентских приложений по типу конечного пользователя: для [потребителей](docs/frontend/customerclient.ru.md), [кухни](docs/frontend/kitchenclient.ru.md), [склада](docs/frontend/warehouseclient.ru.md), [курьеров](docs/frontend/courierclient.ru.md), [менеджеров](docs/frontend/managerclient.ru.md), [админов](docs/frontend/adminclient.ru.md).
- Виды клиентских приложений по типу развертывания: вэб, десктоп, мобильное (Android), бот в телеграм.
- Описание бэкенд сервисов: [authentication API](docs/backend/authbackend.ru.md), [customer backend](docs/backend/customerbackend.ru.md), [kitchen backend](docs/backend/kitchenbackend.ru.md), [courier backend](docs/backend/courierbackend.ru.md), [manager backend](docs/backend/managerbackend.ru.md), [file service](docs/backend/fileservice.ru.md), [statistical model](docs/backend/statisticalmodel.ru.md), [predictive model](docs/backend/predictivemodel.ru.md), [email sender](docs/backend/emailsender.ru.md), [push notifications](docs/backend/pushnotifications.ru.md).
- Внешние сервисы: [workflow-auth](https://github.com/alexeysp11/workflow-auth), [workflow-lib](https://github.com/alexeysp11/workflow-lib), Firebase, email delivery service, payment gateway.
- Виды оплаты: наличная при получении, через валидатор при получении, через приложение банка по QR-коду, в приложении с помощью CVC.
- Загрузка файлов на сервер (изображения, видео, Word, Excel, PDF).
- Загрузка файлов с сервера (изображения, Word, Excel, PDF).
- Формирование QR-кода для оплаты.
- Отправка уведомлений об акциях на почту и/или на телеграм.
- Отображение информации по заказам в виде списков: список всех заказов, информация по конкретному заказу (фактическое время оформления, готовки и доставки; ориентировочное время готовки и доставки, общая сумма заказа, стоимость позиций заказа, место доставки; статус).
- Статистика по многим заказам в виде дашбордов (по времени: день, неделя, месяц, год, всё время; по типу графиков: Line chart, Bar chart, Histogram, Scatter plot и т.д.; метрики: общая сумма заказа, стоимость позиции, количество заказов, количество позиций, время оформления заказов, место доставки).
- Метрики для внутреннего пользования: фактическое время оформления заказов, готовки и доставки; общая сумма заказа, стоимость позиций заказа, количество заказов, количество позиций, время оформления заказов, место доставки, место регистрации пользователя.
- Предиктивные модели по всем метрикам: для группы пользователей (фильтр: город, страна, возраст, пол, совпадения в ФИО пользователей, место доставки, место регистрации; отображение: список пользователей, краткая информация о пользователе).
- Отслеживание местоположения курьера.

### Технические требования к системе 

- Распределенная система храненения записей в БД: сделать анализ по БД, которая оптимальна для записи и для чтения.
- Несколько типов хранилищ: SQL, сессии, file storage.
- Балансировка нагрузки - Load balancer.
- Вэб (ASP.NET Core MVC + React), десктоп (WPF).
- Использование gRPC, RabbitMQ, ElasticSearch, WebAPI и worker.
- У RabbitMQ может быть несколько "подписчиков".
- Асинхронность и параллельность (например, при формировании изображений).

### Общая модель системы 

![system_overall](docs/img/system_overall.png)

### Упрощенная диаграмма уровней (слоев) приложения 

![layers_simplified](docs/img/layers_simplified.png)

## Конфигурация проекта 

Для скачивания данного проекта и всех его зависимостей необходимо последовательно выполнить в командной строке следующие команды:
```
git clone https://github.com/alexeysp11/Open-Xml-PowerTools.git 
git clone https://github.com/alexeysp11/workflow-lib.git
git clone https://github.com/alexeysp11/workflow-auth.git
git clone https://github.com/alexeysp11/delivery-service-csharp.git
```

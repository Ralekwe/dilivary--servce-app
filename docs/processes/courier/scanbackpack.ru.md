# scanbackpack

[English](scanbackpack.md) | [Русский](scanbackpack.ru.md)

Наименование: **Отсканировать QR-код на рюкзаке**.

Сценарий сканирования QR-кода на рюкзаке перед доставкой курьером предполагает использование мобильного приложения или портативного сканера для сканирования уникального QR-кода, связанного с рюкзаком каждого курьера.
Это подтверждает, что доставку осуществляет правильный курьер, и предоставляет информацию об отслеживании в режиме реального времени компании службы доставки и клиенту.

Паттерн процесса: [delivering](../../processpatterns/delivering.ru.md)

Ответственные модули: [клиентское приложение](../../frontend/courierclient.md), [бэкэнд-сервис](../../backend/courierbackend.md)

Версия платформы: v0.1

## Зависимости

### Зависит от

| Бэкэнд-сервис | Процесс |
| --- | ---- |
| [courierbackend](../../backend/courierbackend.ru.md) | [deliverorder](../courier/deliverorder.ru.md) |

## Описание процесса

- Регистрация рюкзака с помощью сканирования QR-кода (для того, чтобы регистрировать начало/конец работы в течение дня и отслеживать местоположение курьера в real time).

![delivering_overall](../../img/processpatterns/delivering_overall.png)

Несмотря на то, что данный процесс относится к макропроцессу [delivering](../../processpatterns/delivering.ru.md), реализация данного процесса схожа с процессами, входящими в макропроцесс [maintenance](../../processpatterns/maintenance.ru.md), в контексте уведомления пользователя:

![maintenance_overall](../../img/processpatterns/maintenance_overall.png)

### Flowchart-диаграммы для сетевого взаимодействия

![overall.delivering](../../img/flowcharts/overall.delivering.png)

### План пошагового выполнения процесса

- Курьер открывает приложение на своем устройстве.
- Курьер выбирает заказ на доставку, над которым работает.
- Курьер сканирует QR-код на рюкзаке с помощью камеры своего устройства.
- Система проверяет QR-код и подтверждает, что он соответствует заказу на доставку.

![courier.scanqronorder](../../img/activitydiagrams/courier.scanqronorder.png)

### Диаграммы последовательности

![courier.scanqronorder](../../img/sequencediagram/courier.scanqronorder.png)

![delivering.scanbackpack](../../img/sequencediagram/delivering.scanbackpack.png)

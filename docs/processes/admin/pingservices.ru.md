# pingservices

[English](pingservices.md) | [Русский](pingservices.ru.md)

Наименование: **Пинговать сервисы**.

Сценарий, отвечающий за проверку связи служб администратором в компании, занимающейся доставкой, включает использование инструмента мониторинга для проверки доступности и производительности различных служб, таких как отслеживание доставки или управление запасами, а также получение предупреждений в случае обнаружения каких-либо проблем.

Паттерн процесса: [maintenance](../../processpatterns/maintenance.ru.md)

Ответственные модули: [клиентское приложение](../../frontend/adminclient.ru.md), [бэкенд-сервис](../../backend/adminbackend.ru.md)

## Зависимости

### Зависит от

| Бэкэнд-сервис | Процесс |
| --- | ---- |
| [adminbackend](../../backend/adminbackend.ru.md) | [deployservice](../admin/deployservice.ru.md) |

### Влияет на

| Бэкэнд-сервис | Процесс |
| --- | ---- |
| [notificationsbackend](../../backend/notificationsbackend.ru.md) | [sendnotifications](../notificationsbackend/sendnotifications.ru.md) |

## Описание процесса

![maintenance_overall](../../img/maintenance_overall.png)

### Пошаговое выполнение

- Администратор открывает приложение.
- Администратор выбирает опцию "Пинговать сервисы".
- Система проверяет все службы, чтобы убедиться, что они работают правильно.
- Система отображает результаты пинга администратору.

![admin.pingservices](../../img/activitydiagrams/admin.pingservices.png)

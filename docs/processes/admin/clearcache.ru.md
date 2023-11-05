# clearcache

[English](clearcache.md) | [Русский](clearcache.ru.md)

Наименование: **Очистка кэшированных сообщений**.

Сценарий очистки кэшированных данных, хранящихся в БД, ассоциированных с соответствующими микросервисами в компании службы доставки.
Данный сервис может выполняться как автоматически, так и вручную администратором. 

Макропроцесс: [maintenance](../../macroprocesses/maintenance.ru.md)

Ответственные модули: [клиентское приложение](../../frontend/adminclient.ru.md), [бэкенд-сервис](../../backend/adminbackend.ru.md)

## Описание процесса

В микросервисной архитектуре каждый микросервис может иметь собственный кэш, в котором хранятся данные из внешних сервисов или баз данных.

Когда данные в этих внешних службах или базах данных изменяются, микрослужбе необходимо очистить свой кэш, чтобы обеспечить наличие самых актуальных данных.
Это может быть вызвано событиями или сообщениями, отправленными из внешних служб или баз данных.

![maintenance_overall](../../img/maintenance_overall.png)

### Пошаговое выполнение
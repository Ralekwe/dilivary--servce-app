# dbabackend

[English](dbabackend.md) | [Русский](dbabackend.ru.md)

`dbabackend` — это бэкэнд-сервис, который позволяет администратору базы данных управлять базами данных.

[Клиентское приложение](../frontend/dbaclient.ru.md)

## Общая модель системы 

Системы мониторинга в БД: 
- место на дисках
- очереди в pgbouncer
- потеря реплики
- лаг реплики
- ошибки raid массивов
- количество долгих autovacuum процессов

Кроны: 
- лаг репликации
- принудительно остановленные запросы
- ежедневный отчет по запросам в БД

Tasks: 
- проведение миграций схемы в БД
- удаление/архивирование больших таблиц
- выдача прав
- создание новых БД (мажорные/минорные версии)
- поиск аномалий в отчетах для каждой БД
    - возросла нагрузка
    - не пришел запрос/отчет
    - появились новые запросы
    - запрос стал выполняться чаще
    - запрос стал потреблять больше CPU
    - запрос стал потреблять больше дисков

![system_overall](../img/system_overall.png)

## Процессы 
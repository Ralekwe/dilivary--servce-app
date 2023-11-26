# getpdf

[English](getpdf.md) | [Русский](getpdf.ru.md)

Наименование: **Получить ПДФ документ**.

Сценарий, отвечающий за создание и/или получение PDF-файлов в компании службы доставки.

Паттерн процесса: [transmittingfile](../../processpatterns/transmittingfile.ru.md)

Ответственные модули: [бэкенд-сервис](../../backend/fileservice.ru.md)

Версия платформы: v0.1

## Зависимости

### Зависит от

| Бэкэнд-сервис | Процесс |
| --- | ---- |
| [managerbackend](../../backend/managerbackend.ru.md) | [terminationofemployment](../manager/terminationofemployment.ru.md) |

## Описание процесса

![transmittingfile_overall](../../img/processpatterns/transmittingfile_overall.png)

### План пошагового выполнения процесса

- Запрос приходит на бэкэнд-сервис [fileservice](../../backend/fileservice.ru.md).
- Запрос обрабатывается на наличие ошибок.
- Формируется файл.
- Файл отправляетя в качестве ответа на запрос.

![fileservice.getpdf](../../img/activitydiagrams/fileservice.getpdf.png)

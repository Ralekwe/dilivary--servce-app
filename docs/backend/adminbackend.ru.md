# adminbackend

[English](adminbackend.md) | [Русский](adminbackend.ru.md)

`adminbackend` — это бэкенд сервис, который позволяет администраторам управлять пользователями, продуктами и заказами.

Бэкенд-сервис, отвечающий за управление запросами администраторов в компании, занимающейся доставкой, представляет собой веб-приложение, которое обрабатывает аутентификацию пользователей, управление базой данных, запросы API и другие задачи на стороне сервера.
Он взаимодействует со всеми клиентскими приложениями и обеспечивает централизованное управление всей службой доставки.

[Клиентское приложение](../frontend/adminclient.ru.md)

## Общая модель системы 

![system_overall](../img/system_overall.png)

## Процессы 

- [Вход](../processes/auth/signin.ru.md)
- [Пинговать сервисы](../processes/admin/pingservices.ru.md)
- [Управление разрешениями](../processes/admin/managepermissions.ru.md)
- [Управление уровнями доступа](../processes/admin/manageaccesslevels.ru.md)
- [Развернуть сервис из GitHub](../processes/admin/deployservice.ru.md)
- [Репликация БД](../processes/admin/dbreplication.ru.md)
- [Очистка кэша](../processes/admin/clearcache.ru.md)
- [Телефония](../processes/admin/telephony.ru.md)
- [Корпоративная сеть](../processes/admin/corporatenetwork.ru.md)
- [Корпоративный WiFi](../processes/admin/corporatewifi.ru.md)
- [Наблюдение за проблемами с безопасностью](../processes/admin/watchsecurityproblems.ru.md)
- [Запрос на изменение](../processes/admin/requestforchange.ru.md)
- [Запрос на обслуживание](../processes/admin/requestforservice.ru.md)

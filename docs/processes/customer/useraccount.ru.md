# useraccount

Доступно на других языках: [English/Английский](useraccount.md), [Russian/Русский](useraccount.ru.md). 

Клиентское приложение для потребителя: аккаунт пользователя.

Описание **клиентского приложения** представлено по [данной ссылке](../../frontend/customerclient.ru.md).

## Описание процесса

- Контроллер обрабатывает запрос и сохраняет на UI необходимые для отображения данные о пользователе.
- Как такового пошагового описания для данного процесса не подразумевается, т.к. необходимые данные о пользователе были получены ещё при аутентификации и сохранены в `ClaimsPrincipal` (см. процесс [signin](signin.md)).
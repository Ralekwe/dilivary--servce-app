# customer.cancelorder

Доступно на других языках: [English/Английский](customer.cancelorder.md), [Russian/Русский](customer.cancelorder.ru.md). 

Клиентское приложение для потребителя: отменить заказ

Описание **клиентского приложения** представлено по [данной ссылке](../customerclient.ru.md).

## Описание процесса

- Некоторые заказы не могут быть отменены: 
    - статус: 
       - "В доставке", 
       - "В готовке"; 
       - "В доставке из магазина на склад" (внутренний фильтр, пользователь его никогда не видит).
    - вид оплаты: 
       - "наличная при получении", 
       - "через валидатор при получении".
- Если при загрузке карточки заказа уже известно, что заказ не может быть отменен, то скрывать кнопку "Отменить заказ".
- После отмены заказа, заказ пропадает из списка текущих заказов.

## Последовательность действий пользователя

![customer.cancelorder](../../img/customer.cancelorder.png)

- Пользователь открывает страницу "Текущие заказы" или "Все заказы".
- Пользователь открывает страницу заказа.
- Пользователь нажимает кнопку "Отменить заказ": 
    - На бекгранде производится запрос к сервису для проверки того, не изменился ли статус заказа.
    - Если статус заказа изменился, то обновить данные в БД клиентского приложения, выводить сообщение "Заказ не может быть отменен из-за несоответствия статуса: <имя статуса>" и выкидывать пользователя в "Текущие заказы". 
    - Если статус заказа позволяет отменить заказ, то обновить данные в БД клиентского приложения, выводить сообщение "Заказ успешно отменен" и выкидывать пользователя в главное меню.
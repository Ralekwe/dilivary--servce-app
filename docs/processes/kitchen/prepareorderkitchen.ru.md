# prepareorderkitchen

Доступно на других языках: [English/Английский](prepareorderkitchen.md), [Russian/Русский](prepareorderkitchen.ru.md). 

Клиентское приложение для кухни: подготовить заказ.

Связанные модули: [клиентское приложение](../../frontend/kitchenclient.md), [бэкэнд-сервис](../../backend/kitchenbackend.md).

## Описание процесса

![placing_order_overall](../../img/placing_order_overall.png)

### Пошаговое выполнение

- Клиент оформляет заказ через приложение службы доставки.
- После нескольких шагов заказ наконец получен серверной службой кухни.
- Персонал кухни проверяет заказ и приступает к приготовлению еды.
- Пока еда готовится, статус заказа обновляется в приложении в режиме реального времени.
- Как только еда будет готова, сотрудники кухни изменят статус заказа на «готово к самовывозу» или «отправлено на доставку».
- Водители-курьеры получают информацию о заказе и место получения через приложение.
- Водители-экспедиторы забирают еду и доставляют ее покупателю.
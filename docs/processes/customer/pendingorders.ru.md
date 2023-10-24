# customer.pendingorders

Доступно на других языках: [English/Английский](pendingorders.md), [Russian/Русский](pendingorders.ru.md). 

Клиентское приложение для потребителя: текущие заказы.

Описание **клиентского приложения** представлено по [данной ссылке](../../frontend/customerclient.ru.md).

## Описание процесса

Данный процесс почти полностью повторяет [просмотр всех заказов](orders.ru.md), за исключением того, что для отображения на данной форме заказы фильтруются по статусу: необходимо, чтобы было "Обрабатывается", "В процессе готовки", "В доставке".

## Объекты 

- [Product](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/Products/Product.md)
- [ProductCategory](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/Products/ProductCategory.md)
- [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/BusinessDocuments/DeliveryOrder.md)

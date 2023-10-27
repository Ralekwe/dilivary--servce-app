# customer.orders

Доступно на других языках: [English/Английский](orders.md), [Russian/Русский](orders.ru.md). 

Клиентское приложение для потребителя: оформление заказа.

Связанные модули: [клиентское приложение](../../frontend/customerclient.md), [бэкенд-сервис](../../backend/customerbackend.md).

## Описание процесса

- Отображение информации по предыдущим заказам в виде списка объектов [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/BusinessDocuments/DeliveryOrder.md). Таким образом, клиент может просмотреть подробную информацию о каждом заказе, например, заказанные товары, адрес доставки и статус заказа (например, изготовление, доставка).
- Детали заказы также можно наблюдать в разделе [Текущие заказы](pendingorders.ru.md).
- Загрузка файлов с сервера (отчета по конкретному заказу): 
    - расширения файлов: изображения, PDF.
    - отправка сообщения на эл.почту/Телеграм.
- Пользователь может открыть конкретный заказ, получить превью и выгрузить его в виде файла.
    - Попробовать сделать превью в виде HTML, а потом конвертировать в PDF с помощью [workflow-lib](https://github.com/alexeysp11/workflow-lib).
<!--
- Использование предиктивных моделей: ориентировочное время готовки и доставки.
- Из списка всех заказов возможно перейти в "Дашборды", установить фильтры для выгрузки статистики, получить превью и выгрузить его в виде файла.
- Статистика по предыдущим заказам в виде дашбордов: 
    - по времени: 
        - день, 
        - неделя,
        - месяц,
        - год,
        - всё время; 
    - по типу графиков:
        - Line chart,
        - Bar chart,
        - Histogram,
        - Scatter plot и т.д.; 
    - метрики:
        - общая сумма заказа,
        - стоимость позиции,
        - количество заказов,
        - количество позиций,
        - время оформления заказов,
        - место доставки.
-->

### Пошаговое выполнение

- Пользователь открывает страницу "Все заказы".
- Приложение проверяет, доступна ли информация о заказах в базе данных кэша.
- Если информация присутствует и актуальна, приложение отображает заказы покупателю.
- Если информация отсутствует или устарела, приложение перенаправляет запрос в [бэкенд-сервис клиентского приложения](../../backend/customerbackend.ru.md) для получения заказов.

![customer.allorders](../../img/activitydiagrams/customer.allorders.png)

## Данные

### Объекты 

- [Product](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/Products/Product.md)
- [ProductCategory](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/Products/ProductCategory.md)
- [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/BusinessDocuments/DeliveryOrder.md)

### Таблицы в БД

- [delivery_menuitem_cb](../../dbtables/customer/delivery_menuitem_cb.md)
- [delivery_category_cb](../../dbtables/customer/delivery_category_cb.md)
- [delivery_order_cb](../../dbtables/customer/delivery_order_cb.md)

<!--
## Примеры заказа

![purchase-order-template](https://templates.invoicehome.com/purchase-order-template-us-mono-black-750px.png)
-->

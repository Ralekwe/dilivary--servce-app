# delivering

[English](README.md) | [Русский](README.ru.md)

Наименование: **Доставка**.

`delivering` - это паттерн реализации бизнес-процессов, которые связаны с созданием заказа на доставку, а также оплатой и доставкой заказа. 

![delivering_overall](../../img/processpatterns/delivering_overall.png)

Данная диаграмма демонстрирует жизненный цикл продукта или заказа на доставку еды:

![productlifecycle](../../img/productlifecycle.png)

### Flowchart-диаграммы для сетевого взаимодействия

- [makeorder](makeorder.ru.md)
- [makepayment](makepayment.ru.md)
- [requeststore2wh](requeststore2wh.ru.md)
- [store2wh](store2wh.ru.md)
- [confirmstore2wh](confirmstore2wh.ru.md)
- [wh2kitchen](wh2kitchen.ru.md)
- [preparemeal](preparemeal.ru.md)
- [kitchen2wh](kitchen2wh.ru.md)
- [scanqronorder](scanqronorder.ru.md)
- [scanbackpack](scanbackpack.ru.md)
- [deliverorder](deliverorder.ru.md)

![overall.delivering](../../img/flowcharts/overall.delivering.png)

## Структуры данных

При обработке заказа (регистрация заказа, оплата, приготовление, доставка) используются следующие объекты/DTO:

| Объект | DTO | Пояснения |
| --- | ---- | --- |
| [InitialOrder](../../models/Orders/InitialOrder.cs) | InitialOrderDTO | модель для заведения заказа |
| [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/BusinessDocuments/DeliveryOrder.cs) | DeliveryOrderDTO  | модель для выставления счёта, или доставки продуктов из магазина на склад |
| [DeliveryWh2Kitchen](../../models/Orders/DeliveryWh2Kitchen.cs) | DeliveryWh2KitchenDTO | модель для переноса продуктов со склада на кухню (пункт отправки, пункт назначения, время начала, время конца, продукты, ингридиенты) |
| [CookingOperation](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/Products/CookingOperation.cs) | CookingOperationDTO | модель для приготовления заказа (время начала, время конца, продукты, ингридиенты, рецепты) |
| [DeliveryKitchen2Wh](../../models/Orders/DeliveryKitchen2Wh.cs) | DeliveryKitchen2WhDTO | модель для переноса готового заказа из кухни на склад (пункт отправки, пункт назначения, время начала, время конца, продукты, номер заказа, сгенерированный QR-код заказа) |
| [DeliveryOperation](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/Delivery/DeliveryOperation.cs) | DeliveryOperationDTO  | модель для доставки (QR-код на заказе, QR-код на рюкзаке, пункт отправки, пункт назначения, время начала, время конца, номер заказа) |

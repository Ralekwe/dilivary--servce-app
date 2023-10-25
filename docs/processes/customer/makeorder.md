# customer.makeorder

Read this in other languages: [English](makeorder.md), [Russian/Русский](makeorder.ru.md). 

Customer client application: make order.

Related modules: [client application](../../frontend/customerclient.md), [backend service](../../backend/customerbackend.md).

## Process description

- The main process in the application [customer app](../../frontend/customerclient.md).
- Responsible for registering the order in the application.
- Includes electronic payment logic.

![placing_order_overall](../../img/placing_order_overall.png)

### Step-by-step execution

- The user browses through the list of available products and selects the ones they want to order.
- They proceed to checkout and select preferred delivery option, enter their delivery address and contact details, select their preferred payment method (cash on delivery, POS when receiving, using QR code, using CVC), then confirm the order.
- The client-side app validates date and stores some cache.
- Start the [makepayment](makepayment.md) process.
- Then the information entered by the user is sent to the database and to [customerbackend](../../backend/customerbackend.md), which also notifies [kitchenbackend](../../backend/kitchenbackend.md) (this is done within the process [preprocessorder](preprocessorder.md)).
- The user is on the [Pending orders](pendingorders.md) page where they can track the status of their order in real-time.

![customer.makeorder](../../img/activitydiagrams/customer.makeorder.png)

## Objects 

- [Product](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/Products/Product.md)
- [ProductCategory](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/Products/ProductCategory.md)
- [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/BusinessDocuments/DeliveryOrder.md)
- [PlaceOrderModel](../../classes/models/Orders/PlaceOrderModel.md)

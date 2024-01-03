# orders

[English](orders.md) | [Русский](orders.ru.md)

Name: **Getting the list of orders**.

The overall description of the scenario for viewing order history in the customer backend service is that it allows customers to access a record of their past orders, including details such as order date, items ordered, delivery location, and total cost. 

The interactive steps within the scenario include selecting the order history tab, browsing past orders, and viewing order details.

Process pattern: [information](../../processpatterns/information.md)

Responsible modules: [client application](../../frontend/customerclient.md), [backend service](../../backend/customerbackend.md)

Platform version: v0.1

## Process description

- Displaying information on previous orders in the form of a list of objects [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/BusinessDocuments/DeliveryOrder.cs). So the customer can view the details of each order, such as the items ordered, the delivery address, and the status of the order (e.g. production, delivery). 
- The order details can also be seen in the [Pending orders](../customer/pendingorders.md) section.
- Downloading files from the server (report for a specific order):
     - file extensions: images, PDF.
     - sending a message by email/Telegram.
- The user can open a specific order, get a preview and upload it as a file.
     - Try to make a preview in HTML form, and then convert to PDF using [workflow-lib](https://github.com/alexeysp11/workflow-lib).
<!--
- Use of predictive models: estimated cooking and delivery times.
- From the list of all orders, you can go to the "Dashboards", set filters for uploading statistics, get a preview and upload it as a file.
- Statistics on previous orders in the form of dashboards:
    - by time:
        - day,
        - a week,
        - month,
        - year,
        - all the time;
    - according to the type of charts:
        - line chart,
        - barchart,
        - histogram,
        - Scatter plot, etc.;
    - metrics:
        - the total amount of the order,
        - position value,
        - the number of orders,
        - the number of positions,
        - time of placing orders,
        - place of delivery.
-->

![information_overall](../../img/processpatterns/information_overall.png)

### Step-by-step execution plan of the process

- The user opens the "All Orders" page.
- App checks if the information about the orders is available in the cache database.
- If the information is present and up-to-date, the app displays the orders to the customer.
- If the information is absent or obsolete, the app redirects the request to the [customer backend service](../../backend/customerbackend.md) to retrieve the orders.

![customer.allorders](../../img/activitydiagrams/customer.allorders.png)

## Data structures

| Object | DTO |
| --- | ---- |
| [Product](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/Products/Product.cs) | - |
| [ProductCategory](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/Products/ProductCategory.cs) | - |
| [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/BusinessDocuments/DeliveryOrder.cs) | DeliveryOrderDTO |

<!--
## Purchase order template 

![purchase-order-template](https://templates.invoicehome.com/purchase-order-template-us-mono-black-750px.png)
-->

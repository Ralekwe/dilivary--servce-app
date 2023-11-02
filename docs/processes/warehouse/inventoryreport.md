# inventoryreport

[English](inventoryreport.md) | [Русский](inventoryreport.ru.md)

Warehouse client application: inventory report.

The scenario responsible for getting inventory report by warehouse employees involves generating a report that displays current inventory levels, incoming shipments, outgoing orders, and other relevant information. 
This report could be generated on demand or scheduled to run at regular intervals.

Macro process: [information](../../macroprocesses/information.md)

Responsible modules: [client application](../../frontend/warehouseclient.md), [backend service](../../backend/warehousebackend.md)

## Process description

![information_overall](../../img/information_overall.png)

### Step-by-step execution

- Warehouse employee opens the app.
- Employee selects "Inventory Report" option.
- The system retrieves the inventory data from the database.
- The system displays the inventory report to the employee.

![customer.allorders](../../img/activitydiagrams/customer.allorders.png)

## Data 

### Objects

- InventoryReport
    - InventoryReport object could have properties like reportDate, inventoryLevel, product details, etc. 
- [Employee](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/InformationSystem/Employee.md)
- [Product](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/Products/Product.md)

### DTOs

- InventoryReportDTO
    - InventoryReportDTO could have properties like reportDate, inventoryLevel, productName, productDescription, productPrice, etc.

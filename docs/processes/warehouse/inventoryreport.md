# inventoryreport

Read this in other languages: [English](inventoryreport.md), [Russian/Русский](inventoryreport.ru.md). 

Warehouse client application: inventory report.

The scenario responsible for getting inventory report by warehouse employees involves generating a report that displays current inventory levels, incoming shipments, outgoing orders, and other relevant information. 
This report could be generated on demand or scheduled to run at regular intervals.

Responsible modules: [client application](../../frontend/warehouseclient.md), [backend service](../../backend/warehousebackend.md).

## Process description

### Step-by-step execution

- Warehouse employee opens the app.
- Employee selects "Inventory Report" option.
- The system retrieves the inventory data from the database.
- The system displays the inventory report to the employee.

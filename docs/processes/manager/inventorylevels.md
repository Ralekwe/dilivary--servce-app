# inventorylevels

Read this in other languages: [English](inventorylevels.md), [Russian/Русский](inventorylevels.ru.md). 

Manager client application: set inventory levels.

The scenario responsible for setting inventory levels by manager in the delivery service company involves determining optimal inventory levels based on demand forecasts, adjusting inventory levels as needed to avoid stockouts or excess inventory, and monitoring inventory levels to ensure efficient operations.

Related modules: [client application](../../frontend/managerclient.md), [backend service](../../backend/managerbackend.md).

## Process description

### Step-by-step execution

- The manager opens the delivery service app and navigates to the backend service for managers.
- The manager selects the option to set inventory levels.
- The app displays a list of available items, along with current inventory levels and reorder points.
- The manager can adjust inventory levels based on demand forecasts or supplier lead times.
- The app automatically generates purchase orders for items that fall below the reorder point.
- The manager can review and approve purchase orders before they are sent to suppliers.

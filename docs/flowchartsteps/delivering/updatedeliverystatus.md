# updatedeliverystatus

[English](updatedeliverystatus.md) | [Русский](updatedeliverystatus.ru.md)

Name: **Update delivery status**.

The scenario responsible for updating order status after delivering by couriers involves using the mobile app or web interface to update the status of the order from "out for delivery" to "delivered" and providing any relevant details about the delivery.

Flowchart name: [delivering](../../flowchartnames/delivering.md)

Responsible modules: [client application](../../frontend/courierclient.md), [backend service](../../backend/courierbackend.md)

Platform version: v0.1

## Dependencies

### Influences on

| Backend service | Process |
| --- | ---- |
| [notificationsbackend](../../backend/notificationsbackend.md) | [sendnotifications](../notificationsbackend/sendnotifications.md) |

## Process description

![delivering_overall](../../img/flowchartnames/delivering_overall.png)

### Flowcharts for network communication

![overall.delivering](../../img/flowcharts/overall.delivering.png)

### Step-by-step execution plan of the process

- The courier opens the app on their device.
- The courier selects the delivery order they are working on.
- The courier updates the status of the delivery order (e.g. "en route", "delivered") in the system.
- The system updates the status of the delivery order and notifies the customer of any changes.

![courier.updatedeliverystatus](../../img/activitydiagrams/courier.updatedeliverystatus.png)

### Sequence diagrams

![courier.updatedeliverystatus](../../img/sequencediagram/courier.updatedeliverystatus.png)

## Data structures

| Object | DTO | Database table |
| --- | ---- | --- |
| [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/BusinessDocuments/DeliveryOrder.cs) | - | - |
| [Employee](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/InformationSystem/Employee.cs) | - | - |
| DeliveryStatus | - | - |
| - | DeliveryStatusUpdateDTO | - |

- DeliveryStatusUpdateDTO could have properties like deliveryId, status, statusDate, etc.

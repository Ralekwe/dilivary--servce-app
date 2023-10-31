# scanqronorder

[English](scanqronorder.md) | [Русский](scanqronorder.ru.md)

Courier client application: scan QR code on order.

The scenario responsible for scanning QR code on order before delivering by couriers involves using a mobile app or handheld scanner to scan a unique QR code associated with each order. 
This verifies that the correct order is being delivered and provides real-time tracking information to the delivery service company and the customer.

Macro process: [delivering](../../macroprocesses/delivering.md)

Responsible modules: [client application](../../frontend/courierclient.md), [backend service](../../backend/courierbackend.md)

## Process description

![placing_order_overall](../../img/placing_order_overall.png)

Despite the fact that this process belongs to the macroprocess [delivering](../../macroprocesses/delivering.ru.md), the implementation of this process is similar to the processes included in the macroprocess [maintenance](../../macroprocesses/maintenance.ru.md), in the context of user notification:

![maintenance_overall](../../img/maintenance_overall.png)

### Step-by-step execution

- The courier opens the app on their device.
- The courier selects the delivery order they are working on.
- The courier scans the QR code on the delivery order using their device's camera.
- The system verifies the QR code and displays the details of the delivery order to the courier.

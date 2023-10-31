# courierclient

[English](courierclient.md) | [Русский](courierclient.ru.md)

`courierclient` is a client-side application that is used by delivery drivers to manage their routs and deliveries.

The client-side app used by couriers in the delivery service company allows them to view and manage their assigned deliveries, communicate with customers about delivery details, and update the status of deliveries as they are completed.

[Backend service](../backend/courierbackend.md)

## Overall description of the system 

![system_overall](../img/system_overall.png)

## Description of the application


## Processes 

- [Sign in](../processes/auth/signin.md)
- [Scan the QR code on the backpack](../processes/courier/scanbackpack.md) (to mark the start/end of work)
- [Delivery of the order to the customer](../processes/courier/deliverorder.md)
- [Delivery from store to warehouse](../processes/courier/store2wh.md)

# customerclient

Read this in other languages: [English](customerclient.md), [Russian/Русский](customerclient.ru.md). 

`customerclient` is a client-side application that is used by customers to browse products, place orders, and track deliveries.

## Overall description of the system

![system_overall](../img/system_overall.png)

## Description of the customer application

- Directly communicates with the following backend services:
    - [authentication API](../backend/authbackend.md), 
    - [customer backend](../backend/customerbackend.md), 
    - [file service](../backend/fileservice.md), 
    - [statistical backend](../backend/statisticalbackend.md), 
    - [predictive backend](../backend/predictivebackend.md), 
    - [email backend](../backend/emailbackend.md), 
    - [push notifications](../backend/pushnotificationsbackend.md).
- Processes:
    - User account.
    - [Making order](../processes/customer/makeorder.md).
    - [Make a payment](../processes/customer/makepayment.md)
    - [All orders](../processes/customer/orders.md): displayig information and statistical data about previous orders (in a form of lists and dashboards).
    - [Pending orders](../processes/customer/pendingorders.md): order status tracking.
    - [Settings](../processes/customer/settings.md).
    - Notifications.
    - Watching videos.
- Payment types:
    - cash on delivery, 
    - using POS when receiving,
    - via bank's app using QR code,
    - in this application using CVC.

A description of the main backend service for this application is presented at [this link](../backend/customerbackend.md).

## Authentiacation 

[workflow-auth](https://github.com/alexeysp11/workflow-auth) is used as an external **authentication service**.

![authentication](../img/authentication.png)

### Sign up

![flowchart-signup](https://github.com/alexeysp11/workflow-auth/raw/main/docs/img/flowchart-signup.png)

### Sign in

![flowchart-signin](https://github.com/alexeysp11/workflow-auth/raw/main/docs/img/flowchart-signin.png)

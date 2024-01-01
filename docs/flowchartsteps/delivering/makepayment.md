# makepayment 

[English](makepayment.md) | [Русский](makepayment.ru.md)

Name: **Make a payment**.

The payment scenario in the delivery service app involves a user selecting a payment method and providing their payment information to complete the transaction for their order. 
The app securely processes the payment and provides confirmation of the successful transaction.

Flowchart name: [delivering](../../flowchartsteps/delivering/README.md)

Responsible modules: [client application](../../frontend/customerclient.md), [backend service](../../backend/customerbackend.md)

Platform version: v0.1

## Dependencies

### Depends on

| Backend service | Process |
| --- | ---- |
| [customerbackend](../../backend/customerbackend.md) | [makeorder](../delivering/makeorder.md) |
| [courierbackend](../../backend/courierbackend.md) | [deliverorder](../delivering/deliverorder.md) |

### Influences on

| Backend service | Process |
| --- | ---- |
| [fileservice](../../backend/fileservice.md) | [generateqr](../fileservice/generateqr.md) |

## Process description

The [customer app](../../frontend/customerclient.md) allows users to make payments for their orders using different payment methods.

This process is responsible for payment of the order. 
This process could be called within the [makeorder](../delivering/makeorder.md) or after the [deliverorder](../delivering/deliverorder.md) process.

![delivering_overall](../../img/processpatterns/delivering_overall.png)

### Flowcharts for network communication

![overall.delivering](../../img/flowcharts/overall.delivering.png)

### Step-by-step execution plan of the process

- When the customer places their order, they need to select their preferred payment method (see [makeorder](../delivering/makeorder.md)).
- If they choose **cash on delivery**, they confirm the order and pay the courier when they receive their order.
- If they choose **POS when receiving**, they confirm the order and pay using their credit or debit card when they receive the order.
- If they choose **using QR code**, they scan the QR code provided by the app and confirm the payment.
    - The [customer backend service](../../backend/customerbackend.md) sends a request to [fileservice](../../backend/fileservice.md) to generate a QR code for payment.
- If they choose **using CVC**, they enter their card details and confirm the payment.
    - Add payment geteway after filling out the form if a card is selected as a type of payment.
- The app confirms the payment and sends to the backend service.

![customer.makepayment](../../img/activitydiagrams/customer.makepayment.png)

### Sequence diagrams

In fact, the execution of this process in terms of HTTP requests is limited to obtaining data on the estimated delivery time of the order.

According to the step-by-step execution, this request must store information about the sequence of called processes (this is done for ease of design and understanding of the system).
However, this process actually updates within HTTP requests executed within child processes.

For example, after preparing an order and sending it to the warehouse, according to the step-by-step execution diagram, the [sendnotifications](../../processes/notificationsbackend/sendnotifications.md) process is called (see also the [getnotified](../../processes/notificationsbackend/getnotified.md) process sequence diagram).

![delivering.makepaymentrequest](../../img/sequencediagram/delivering.makepaymentrequest.png)

## Data structures

| Object | DTO | Database table |
| --- | ---- | --- |
| [DeliveryOrder](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/BusinessDocuments/DeliveryOrder.cs) | DeliveryOrderDTO | [delivery_order_cb](../../dbtables/customer/delivery_order_cb.md) |
| [InitialOrder](../../../src/models/Orders/InitialOrder.cs) | InitialOrderDTO | [delivery_initialorder_cb](../../dbtables/customer/delivery_initialorder_cb.md) |
| [Customer](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/Customers/Customer.cs) | CustomerDTO | - | 
| [Payment](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/Monetary/Payment.cs) | PaymentDTO | - | 
| [Transaction](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/Monetary/Transaction.cs) | TransactionDTO | - | 

- OrderDTO
- CustomerDTO
- DeliveryDTO
- Payment/PaymentDTO: contains information about the payment, such as payment method and total amount
- Transaction/TransactionDTO: contains information about the payment transaction, such as transaction ID and status

### DB tables 

- deliveries: contains columns for delivery ID, delivery address, expected delivery time, and status
- payments: contains columns for payment ID, payment method, total amount, and status
- transactions: contains columns for transaction ID, payment ID, status, and timestamp

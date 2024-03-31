# delivery-service-csharp 

[English](README.md) | [Русский](README.ru.md)

A **delivery service app** is an ERP platform that enables users to order and receive goods. 
The app includes features such as browsing products, selecting delivery options, tracking orders in real-time, and making payments.

## Overall description 

### Goal 

The goals of the delivery service app in general are to provide a convenient and efficient way for customers to order and receive deliveries, while also streamlining the process for businesses and couriers involved in the delivery process.

The goals of the project are to develop a comprehensive delivery service app that meets the needs of all stakeholders involved in the delivery process, including customers, businesses, couriers, and managers. 
This includes developing client side apps for each user type, as well as backend services to support authentication, files, statistics, prediction, email sending, and push notifications.

### Scope 

The scope of the project includes developing a full-stack delivery service app that can handle all aspects of the delivery process, from customer orders to courier deliveries. 
This includes developing client side apps for six different user types, as well as backend services to support authentication, files, statistics, prediction, email sending, and push notifications.

### Who can use this app 

The application is designed to be used by customers, businesses, couriers, and managers involved in the delivery process. 
Any company that offers delivery services could potentially use this application, including restaurants, grocery stores, retail stores, and other businesses that offer delivery services.

## System requirements and description

### System description

- Types of client applications by end user type: 
    - [customers](docs/frontend/customerclient.md), 
    - [employee](docs/frontend/kitchenclient.md), 
    - [admins](docs/frontend/adminclient.md).
- Description of backend services: 
    - [authentication](docs/backend/authbackend.md), 
    - [customer](docs/backend/customerbackend.md), 
    - [employee](docs/backend/kitchenbackend.md), 
    - [admin](docs/backend/adminbackend.md), 
    - [system configurations](docs/backend/systembackend.md), 
    - [file service](docs/backend/fileservice.md), 
    - [statistics](docs/backend/statisticalbackend.md), 
    - [monitoring](docs/backend/notificationsbackend.md),
    - [notifications](docs/backend/notificationsbackend.md).
- Description of process patterns (you can read more about process patterns at [this link](docs/processpatterns/README.md)): 
    - [information](docs/processpatterns/information.md),
    - [maintenance](docs/processpatterns/maintenance.md),
    - [transmitting file](docs/processpatterns/transmittingfile.md),
    - [requesting](docs/processpatterns/requesting.md).
- Description of process patterns (see also: [flowchart steps](docs/flowchartsteps/README.md)): 
    - [delivering](docs/flowchartsteps/delivering/README.md).

### Business requirements

- Displaying information on orders in the form of lists: a list of all orders, information on a specific order (actual time of registration, cooking and delivery; estimated time of cooking and delivery, total order amount, cost of order items, delivery place; status).
- Tracking the location of the courier.
- Types of payment: 
    - cash upon receipt, 
    - through a validator upon receipt, 
    - through the bank's application using a QR code, 
    - in the application using CVC.
- File operations:
    - Upload files to the server (images, videos, Word, Excel, PDF).
    - Download files from the server (images, Word, Excel, PDF).
- Notifications:
    - Sending notifications about promotions via email and/or Telegram.
- Statistics:
    - Statistics on many orders in the form of dashboards (by time: day, week, month, year, all time; by type of charts: Line chart, Bar chart, Histogram, Scatter plot, etc.; metrics: total order amount, cost positions, number of orders, number of positions, time of ordering, place of delivery).
    - Metrics for internal use: the actual time of ordering, cooking and delivery; the total amount of the order, the value of the order items, the number of orders, the number of items, the time of ordering, the place of delivery, the place of user registration.
    - Predictive models for all metrics: for a group of users (filter: city, country, age, gender, matches in users' full name, place of delivery, place of registration; display: list of users, brief information about the user).

### Technical requirements

- Distributed system for storing records in the database.
- Several storage types: SQL, sessions, file storage.
- Load balancer.
- Types of client applications by deployment type: 
    - web (ASP.NET Core MVC, Blazor, React);
    - desktop (WPF);
    - mobile (Xamarin, Android);
    - telegram bot.
- Types of backend applications by deployment type: 
    - WebAPI;
    - gRPC.
- Using RabbitMQ, ElasticSearch, Firebase, [MailKit](https://github.com/jstedfast/MailKit), payment gateway.
- Asynchronous and multithreading programming (for example, when forming images).
- External services: 
    - [workflow-auth](https://github.com/alexeysp11/workflow-auth), 
    - [workflow-lib](https://github.com/alexeysp11/workflow-lib)

### General system model

This diagram displays a list of client applications, backend services and databases, as well as the general principle of interaction between them.

The diagram notes that the admin backend service is infrastructural and has access to all backend services and databases within the platform, so all the functionality that is necessary for all IT specialists basically goes through the admin backend service.

The principle of naming modules is also indicated.

![system_overall](docs/img/system_overall.png)

## Project configuration

To download this project and all its dependencies, you must sequentially execute the following commands on the command line:
```
git clone https://github.com/alexeysp11/Open-Xml-PowerTools.git 
git clone https://github.com/alexeysp11/workflow-lib.git
git clone https://github.com/alexeysp11/workflow-auth.git
git clone https://github.com/alexeysp11/delivery-service-csharp.git
```

## Docs

- [Versions of the project](docs/versions.md)
- [TODO](docs/TODO.md)
- [Contributing to projects](https://docs.github.com/en/get-started/quickstart/contributing-to-projects)
- [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)

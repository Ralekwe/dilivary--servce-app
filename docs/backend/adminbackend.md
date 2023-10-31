# adminbackend 

[English](adminbackend.md) | [Русский](adminbackend.ru.md)

`adminbackend` is a backend service that enables administrators to manage users, products, and orders.

The backend service responsible for managing requests from admins in the delivery service company is a web-based application that handles user authentication, database management, API requests, and other server-side tasks. 
It interfaces with all client-side apps and provides a centralized location for managing the entire delivery service.

[Client app](../frontend/adminclient.md)

## Overall description of the system 

![system_overall](../img/system_overall.png)

## Processes 

- [Sign in](../processes/auth/signin.md)
- [Ping services](../processes/admin/pingservices.md)
- [Manage permissions](../processes/admin/managepermissions.md)
- [Manage access levels](../processes/admin/manageaccesslevels.md)

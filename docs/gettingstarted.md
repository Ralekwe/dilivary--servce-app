# gettingstarted

[English](gettingstarted.md) | [Русский](gettingstarted.ru.md)

## Naming conventions

### API methods

For API methods that perform tasks related to business processes, you need to allocate a separate controller, which can be called, for example, `BusinessController`.

Many processes on this platform have an event-driven way of communicating between microservices.
Accordingly, a client application usually has the following API methods:
- Receiving/registering a task for the user, i.e. saves it in the database;
- Displaying the task on the user interface;
- Sending the task to the backend service as completed.

To name API methods, the name of the business process and a certain postfix are used, i.e. `ProcessPostfix` (for example, `Wh2KitchenSave`, `Wh2KitchenRespond`, `MakeOrderRequest`).

The following postfixes can be distinguished for business process-oriented methods:
- `Request`: any user actions that are aimed at starting a process (client applications only);
- `Respond`: any user actions that are aimed at responding or performing some action within the process (client applications only);
- `Start`: any actions that are aimed at starting a process (backend services only);
- `Get`: requests aimed at obtaining data from the database, in the context of some process;
- `Save`: requests aimed at saving data in the database and subsequent redirection to another service/controller;
- `Redirect`: same as `Save`.

Theoretically, you could be faced with a potential situation where you need to differentiate (separate) two or three tasks intended for the same user or application instance within the same process.
Most likely, it is recommended to simply transfer the functionality of a secondary task to a separate business process to avoid confusion in the naming of methods.

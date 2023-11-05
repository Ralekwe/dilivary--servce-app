# changemenu

[English](changemenu.md) | [Русский](changemenu.ru.md)

A scenario for changing a menu in a delivery service application involves getting information about the current menu status from the database, including and excluding products from the menu, and a chain of approval for changes (for example, *kitchen manager*, *marketing*, *financial analyst*, * CEO*).
A necessary condition when changing the menu is to set the date and time when the changes will become relevant.

If the negotiation is successful, the application updates the menu and notifies the other microservices of the platform about the changes that have occurred.

Macro process: [requesting](../../macroprocesses/requesting.md)

Responsible modules: [client application](../../frontend/kitchenclient.md), [backend service](../../backend/kitchenbackend.md)

## Process description

![requesting_overall](../../img/requesting_overall.png)

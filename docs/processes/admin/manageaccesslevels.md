# manageaccesslevels

[English](manageaccesslevels.md) | [Русский](manageaccesslevels.ru.md)

Name: **manage access levels**.

The scenario responsible for managing access levels by manager in the delivery service company involves controlling access to specific areas or systems based on employee roles or responsibilities, ensuring that sensitive data is protected, and monitoring access to ensure compliance with security policies.

Macro process: [organizational](../../macroprocesses/organizational.md)

Responsible modules: [client application](../../frontend/adminclient.md), [backend service](../../backend/adminbackend.md)

## Process description

![organizational_overall](../../img/organizational_overall.png)

### Step-by-step execution

- Admin opens the app.
- Admin selects "Access Levels" option.
- The system displays a list of employees and their current access levels.
- The manager selects an employee and updates their access level.
- The system updates the employee's access level in the database.

## Data 

### Objects 

- User roles model: This model could include properties such as role name, description, and permissions. It could also have methods for managing user roles.
- Access control lists model: This model could include properties such as resource name, resource type, and user or group permissions. It could also have methods for managing access control lists.
- Resource permissions model: This model could include properties such as resource name, resource type, and permission level. It could also have methods for managing resource permissions.

# preparemeal

[English](preparemeal.md) | [Русский](preparemeal.ru.md)

Name: **prepare order**.

The prepare food scenario in the delivery service app involves retrieving the order details from the database, calculating the required ingredients and cooking instructions, and preparing the food according to those instructions. 
The app updates the status of the order as it is prepared and notifies the kitchen staff when it is ready for delivery.

Macro process: [delivering](../../macroprocesses/delivering.md)

Responsible modules: [client application](../../frontend/kitchenclient.md), [backend service](../../backend/kitchenbackend.md)

## Process description

- This process is called from the [preprocessorder](../customer/preprocessorder.md) process.

![delivering_overall](../../img/delivering_overall.png)

### Step-by-step execution

- A customer places an order through the delivery service app.
- After some steps the order is finally received by the backend service for kitchen.
- Kitchen staff review the order and begin preparing the food.
- As the food is being prepared, the status of the order is updated in real-time on the app.
- Once the food is ready, kitchen staff update the order status to "ready for pickup" or "out for delivery".
- Delivery drivers receive the order details and pickup location through the app.
- Delivery drivers pick up the food and deliver it to the customer.

![kitchen.preparemeal](../../img/activitydiagrams/kitchen.preparemeal.png)

## Data

### Objects

- Meal
    - The object that represents a meal in the delivery service app could have properties such as name, description, ingredients, price, and availability. It could also have methods for adding or removing ingredients, updating the price, and checking availability.
    - Probably, it could be represented as the [Product](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/Products/Product.md) object.
- [Employee](https://github.com/alexeysp11/workflow-lib/blob/main/docs/Models/Business/InformationSystem/Employee.md)

### DTOs

- MealDTO
- EmployeeDTO

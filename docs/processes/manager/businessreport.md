# businessreport

[English](businessreport.md) | [Русский](businessreport.ru.md)

Name: **Business report**.

The scenario responsible for getting business report by manager in the delivery service company involves generating reports that provide an overview of key business metrics, such as revenue, expenses, profitability, and customer satisfaction.

A business report in a delivery service company could consist of financial reports, operational reports, customer satisfaction reports, inventory reports, and employee performance reports. 
Different types of business reports could be used depending on the specific needs of the company.

Process pattern: [requesting](../../processpatterns/requesting.md)

Responsible modules: [client application](../../frontend/managerclient.md), [backend service](../../backend/managerbackend.md)

## Process description

![requesting_overall](../../img/processpatterns/requesting_overall.png)

### Step-by-step execution

- Manager opens the app.
- Manager selects "Business Report" option.
- The system retrieves the business data from the database.
- The system generates a report and displays it to the manager.

## Data structures

### Objects 

- Financial data model: This model could include properties such as revenue, expenses, profitability, and cash flow. It could also have methods for calculating financial ratios and trends.
- Operational data model: This model could include properties such as delivery times, order accuracy, and customer satisfaction levels. It could also have methods for analyzing operational performance.
- Customer feedback model: This model could include properties such as customer ratings, comments, order ID, and timestamp. It could also have methods for sentiment analysis and clustering, retrieving feedback for a specific order, and aggregating feedback across multiple orders.
- Inventory levels model: This model could include properties such as product information, SKU, quantity, location, timestamp, and stock levels. It could also have methods for optimizing inventory management, updating inventory levels, checking availability, and generating reports.
    - The stock levels model could have properties such as SKU, quantity, location, and supplier. It could also have methods for managing stock levels, ordering new stock, and tracking deliveries. The difference between inventory levels and stock levels is that inventory levels refer to the amount of products currently available for sale, while stock levels refer to the amount of products in storage or in transit.
- [EmployeePerformance](https://github.com/alexeysp11/workflow-lib/blob/main/src/Models/Business/InformationSystem/EmployeePerformance.cs)

### DTOs


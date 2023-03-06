
Given three tables, representing customer transactions and customer attributes:

Write a query to get the average order value by gender.

_Note: We’re looking at the average order value by users that have ever placed an order. Additionally, please round your answer to two decimal places._

**Example:**

**Input:**

`transactions`  table


|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| user_id    | INTEGER  |
| created_at | DATETIME |
| product_id | INTEGER  |
| quantity   | INTEGER  |



`users`  table


| Column |  Type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |
| sex    | VARCHAR |




`products`  table


| Column |  Type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |
| price  | FLOAT   |



**Output:**


| Column |  Type   |
|--------|---------|
| sex    | VARCHAR |
| aov    | FLOAT   |



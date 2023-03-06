
Let’s say you work at Costco. Costco has a database with two tables. The first is  `users`  composed of user information, including their registration date, and the second is  `purchases`  that has the entire item purchase history (if any) for those users.

Write a query to get the total amount spent on each item in the ‘purchases’ table by users that registered in 2022.

**Example:**

**Input:**

`users`  table


|      Column       |   Type   |
|-------------------|----------|
| user_id           | INTEGER  |
| user_name         | VARCHAR  |
| registration_date | DATETIME |




`purchases`  table


|    Column     |   Type   |
|---------------|----------|
| order_id      | INTEGER  |
| user_id       | INTEGER  |
| item          | VARCHAR  |
| price         | FLOAT    |
| purchase_date | DATETIME |



**Output:**


|       Column       |  Type   |
|--------------------|---------|
| item               | VARCHAR |
| total_amount_spent | FLOAT   |



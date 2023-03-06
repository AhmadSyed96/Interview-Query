
We’re given two tables, a table of  `notification_deliveries`  and a table of  `users`  with  `created`  and purchase  `conversion dates`. If the user hasn’t purchased then the  `conversion_date`  column is  `NULL`.

Write a query to get the distribution of total push notifications before a user converts.

**Example:**

**Input:**

`notification_deliveries`  table


|    Column    |   Type   |
|--------------|----------|
| notification | VARCHAR  |
| user_id      | INTEGER  |
| created_at   | DATETIME |



`users`  table


|     Column      |   Type   |
|-----------------|----------|
| id              | INTEGER  |
| created_at      | DATETIME |
| conversion_date | DATETIME |



**Output:**



|    Column    |  Type   |
|--------------|---------|
| total_pushes | INTEGER |
| frequency    | INTEGER |



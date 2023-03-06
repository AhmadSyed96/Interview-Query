
Write a query to get the cost of all transactions by user ordered by total cost descending.

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



`products`  table


| Column |  Type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |
| price  | FLOAT   |



`users`  table


| Column |  Type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |
| price  | FLOAT   |



**Output:**


|   Column   |  Type   |
|------------|---------|
| name       | VARCHAR |
| user_id    | INTEGER |
| total_cost | FLOAT   |




Write a query to identify the names of users who placed less than 3 orders or ordered less than $500 worth of product.

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


|     Column      |  Type   |
|-----------------|---------|
| users_less_than | VARCHAR |





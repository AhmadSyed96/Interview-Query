
Given the  `transactions`  table below, write a query that finds the third purchase of every user.

_Note: Sort the results by the  `user_id`  in ascending order. If a user purchases two products at the same time, the lower  `id`  field is used to determine which is the first purchase._

**Example:**

**Input:**

`transactions`  table


|  Columns   |   Type   |
|------------|----------|
| id         | INTEGER  |
| user_id    | INTEGER  |
| created_at | DATETIME |
| product_id | INTEGER  |
| quantity   | INTEGER  |



**Output:**


|  Columns   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| created_at | DATETIME |
| product_id | INTEGER  |
| quantity   | INTEGER  |





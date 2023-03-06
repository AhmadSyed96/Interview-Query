
Given a transactions table with date timestamps, sample every 4th row ordered by the date.

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
| created_at | DATETIME |
| product_id | INTEGER  |



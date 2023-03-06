
Given the  `transactions`  table, write a query to get the max quantity purchased for each distinct  `product_id`, every year.

The output should include the  `year`,  `product_id`, and  `max_quantity`  for that product sorted by year and  `product_id`  ascending.

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



**Output:**


|    Column    |  Type   |
|--------------|---------|
| year         | INTEGER |
| product_id   | INTEGER |
| max_quantity | INTEGER |



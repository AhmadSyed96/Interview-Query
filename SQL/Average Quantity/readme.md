
Given a table of  `transactions`, write a query to find the average quantity of each product purchased per transaction each year.

The output should include the year, product_id, and average quantity of the product purchased per transaction that year. The output table should be sorted by year and product_id in ascending order. The value for avg_quantity should be rounded to two decimal places.

**Example:**

**Input:**  `transactions`  table

|  Columns   |   Type   |
|------------|----------|
| id         | INTEGER  |
| user_id    | INTEGER  |
| created_at | DATETIME |
| product_id | INTEGER  |
| quantity   | INTEGER  |



**Output:**


|   Columns    |  Type   |
|--------------|---------|
| year         | INTEGER |
| product_id   | INTEGER |
| avg_quantity | DECIMAL |



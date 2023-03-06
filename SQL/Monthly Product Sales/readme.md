

Given a table containing data for monthly sales, write a query to find the total amount of each product sold for each month with each product as its own column in the output table.

**Example:**

**Input:**

`monthly_sales`  table


|   month    | product_id | amount_sold |
|------------|------------|-------------|
| 2021-01-01 |          1 |         100 |
| 2021-01-01 |          2 |         300 |
| 2021-02-01 |          3 |         200 |
| 2021-03-01 |          4 |         250 |




**Output:**


|   month    |  1  |  2  |  3  |  4  |
|------------|-----|-----|-----|-----|
| 2021-01-01 | 100 |   0 | 300 |   0 |
| 2021-02-01 |   0 | 200 |   0 |   0 |
| 2021-03-01 |   0 |   0 |   0 | 250 |




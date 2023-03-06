
The table  `products`  contains data about products that a user purchased. Products are divided into categories. The column  `id`  is the primary key of table products and represents the order in which the products are purchased.

Write a query to output a table that includes every product name a user has ever purchased. Additionally, the table should have a boolean column with a value of  `1`  if the user has previously purchased that product category and  `0`  if it’s their first time buying a product from that category.

_Note: Sort the results by the time purchased ascending._

**Example:**

Display results like:


| product_name | category_previously_purchased |
|--------------|-------------------------------|
| toy car      |                             0 |
| toy plane    |                             1 |
| basketball   |                             0 |
| football     |                             1 |
| baseball     |                             1 |




**Input:**

`products`  table


|   Column    |  Type   |
|-------------|---------|
| id          | INTEGER |
| name        | VARCHAR |
| category_id | INTEGER |




**Output:**


|            Column             |  Type   |
|-------------------------------|---------|
| product_name                  | VARCHAR |
| category_previously_purchased | BOOLEAN |



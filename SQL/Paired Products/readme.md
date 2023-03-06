
Let’s say we have two tables,  `transactions`  and  `products`. Hypothetically the  `transactions`  table consists of over a billion rows of purchases bought by users.

We are trying to find paired products that are often purchased together by the same user, such as wine and bottle openers, chips and beer, etc..

Write a query to find the top five paired products and their names.

_Notes:_  _For the purposes of satisfying the test case, p2 should be the item that comes first in the alphabet._  _The  `qty`  column represents paired products count_

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




`products`  table


| Columns |  Type   |
|---------|---------|
| id      | INTEGER |
| name    | VARCHAR |
| price   | FLOAT   |




**Output:**




| Columns |  Type   |
|---------|---------|
| p1      | VARCHAR |
| p2      | VARCHAR |
| qty     | INTEGER |



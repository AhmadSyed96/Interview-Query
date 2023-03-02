
Let’s say that you’re a data scientist working on a distribution team at Amazon.

Create a report displaying which shipments were delivered to customers during their membership period.

If the transaction is shipped during the membership period, column  `is_member`  should have the value  `Y`. If not, the column should have the value  `N`.

_Hint: You may assume that  `customer_id`  is unique and that shipments are made only to registered customers._

**Example:**

**Input:**

`customers`  table


|        Column         |   Type   |
|-----------------------|----------|
| customer_id           | INTEGER  |
| membership_start_date | DATETIME |
| membership_end_date   | DATETIME |



`shipments`  table


|   Column    |   type   |
|-------------|----------|
| shipment_id | INTEGER  |
| ship_date   | DATETIME |
| customer_id | INTEGER  |
| quantity    | INTEGER  |



**Output:**


|   Column    |   Type   |
|-------------|----------|
| shipment_id | INTEGER  |
| ship_date   | DATETIME |
| customer_id | INTEGER  |
| is_member   | TEXT     |
| quantity    | INTEGER  |



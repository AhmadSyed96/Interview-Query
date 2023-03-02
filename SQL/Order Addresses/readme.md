
Given a table of transactions and a table of users, write a query to determine if users tend to order more to their primary address versus other addresses.

_Note: Return the percentage of transactions ordered to their home address as  `home_address_percent`._

**Example:**

**Input:**

`transactions`  table:

|     Columns      |   Type   |
|------------------|----------|
| id               | INTEGER  |
| user_id          | INTEGER  |
| created_at       | DATETIME |
| shipping_address | VARCHAR  |



`users`  table:

| Columns |  Type   |
|---------|---------|
| id      | INTEGER |
| name    | VARCHAR |
| address | VARCHAR |


**Example Output:**



| home_address_percent | 0.76 |




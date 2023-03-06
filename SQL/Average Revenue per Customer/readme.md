
Let’s say that we work for a B2B SaaS company that has been around for three years.

The company has two revenue lines (product_type): the first is labeled as  `"service"`  and is a consulting type model where clients are serviced on an hourly rate for a one-off project. The second revenue line is  `"software"`, which clients can purchase on an ongoing subscription basis.

Given a table of payments data, write a query to calculate the average revenue per client.

_Note: Round the result to two decimals._

**Example:**

**Input:**

`payments`  table


|     Column      |   Type   |
|-----------------|----------|
| id              | INTEGER  |
| user_id         | NTEGER   |
| created_at      | DATETIME |
| amount_per_unit | FLOAT    |
| quantity        | INTEGER  |
| product_type    | VARCHAR  |



**Output:**


|          Column          | Type  |
|--------------------------|-------|
| average_lifetime_revenue | FLOAT |



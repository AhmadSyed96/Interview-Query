
Let’s say you work at Amazon. With the  `annual_payments`  table below, answer the following three questions via SQL queries and output them as a table with the answers to each question.

1.  How many total transactions are in this table?
2.  How many different users made transactions?
3.  How many transactions listed as  `"paid"`  have an amount greater or equal to 100?
4.  Which product made the highest revenue? (use only transactions with a  `"paid"`  status)

**Example:**

**Input:**

`annual_payments`  table


|     Column      |   Type   |
|-----------------|----------|
| id              | INTEGER  |
| amount          | FLOAT    |
| created_at      | DATETIME |
| status          | VARCHAR  |
| user_id         | INTEGER  |
| amount_refunded | FLOAT    |
| product         | VARCHAR  |
| last_updated    | DATETIME |



**Output:**


|   Column    |  Type   |
|-------------|---------|
| question_id | INTEGER |
| answer      | TEXT    |



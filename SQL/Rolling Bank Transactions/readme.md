
We’re given a table of bank transactions with three columns,  `user_id`, a deposit or withdrawal value (determined if the value is positive or negative), and  `created_at`  time for each transaction.

Write a query to get the total three-day rolling average for deposits by day.

_Note: Please use the format  `'%Y-%m-%d'`  for the date in the outout_

**Example:**

**Input:**

`bank_transactions`  table

|      Column       |   Type   |
|-------------------|----------|
| user_id           | INTEGER  |
| created_at        | DATETIME |
| transaction_value | FLOAT    |

**Output:**


|      Column       |  Type   |
|-------------------|---------|
| dt                | VARCHAR |
| rolling_three_day | FLOAT   |



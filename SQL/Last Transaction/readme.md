﻿
Given a table of bank transactions with columns  `id`,  `transaction_value`, and `created_at` representing the date and time for each transaction, write a query to get the last transaction for each day.

The output should include the id of the transaction, datetime of the transaction, and the transaction amount. Order the transactions by datetime.

**Example:**

**Input:**

`bank_transactions`  table


|      Columns      |   Type   |
|-------------------|----------|
| id                | INTEGER  |
| created_at        | DATETIME |
| transaction_value | FLOAT    |




**Output:**



|      Columns      |   Type   |
|-------------------|----------|
| created_at        | DATETIME |
| transaction_value | FLOAT    |
| id                | INTEGER  |





There was a robbery from the ATM at the bank where you work. Some unauthorized withdrawals were made, and you need to help your bank find out more about those withdrawals.

However, the only information you have is that there was more than 1 withdrawal, they were all performed in 10-second gaps, and no legitimate transactions were performed in between two fraudulent withdrawals.

We’re given a table of bank transactions with three columns,  `user_id`, a deposit or withdrawal value  `transaction_value`, and  `created_at`  time for each transaction.

Write a query to retrieve all user IDs in ascending order whose transactions have exactly a 10-second gap from one another.

_Note: Assume that there are only withdrawals from the ATM, which are denoted with a positive  `transaction_value`_

**Example:**

**Input:**
`bank_transactions`  table

|      Column       |   Type   |
|-------------------|----------|
| user_id           | INTEGER  |
| created_at        | DATETIME |
| transaction_value | FLOAT    |

For given table `bank_transactions`:

| user_id |     created_at      | transaction_value |
|---------|---------------------|-------------------|
|       1 | 2017-01-01 10:10:15 |                10 |
|       2 | 2017-01-01 11:11:11 |                20 |
|       3 | 2017-01-01 12:12:12 |                10 |
|       4 | 2017-01-01 10:10:20 |                30 |



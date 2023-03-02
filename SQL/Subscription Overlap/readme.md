
Given a table of product subscriptions with a subscription start date and end date for each user, write a query that returns true or false whether or not each user has a subscription date range that overlaps with any other completed subscription.

Completed subscriptions have  `end_date`  recorded.

**Example:**

**Input:**

`subscriptions`  table


|   Column   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| start_date | DATETIME |
| end_date   | DATETIME |


| user_id | start_date |  end_date  |
|---------|------------|------------|
|       1 | 2019-01-01 | 2019-01-31 |
|       2 | 2019-01-15 | 2019-01-17 |
|       3 | 2019-01-29 | 2019-02-04 |
|       4 | 2019-02-05 | 2019-02-10 |



**Output:**


| user_id | overlap |
|---------|---------|
|       1 |       1 |
|       2 |       1 |
|       3 |       1 |
|       4 |       0 |



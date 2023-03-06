
Given a  `users`  table, write a query to get the cumulative number of new users added by the day, with the total reset every month.

**Example:**

**Input:**

`users`  table


|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| name       | VARCHAR  |
| created_at | DATETIME |




**Output:**



|    DATE    | INTEGER |
|------------|---------|
| 2020-01-01 | 5       |
| 2020-01-02 | 12      |
| …          | …       |
| 2020-02-01 | 8       |
| 2020-02-02 | 17      |
| 2020-02-03 | 23      |






You’re given two tables,  `users`  and  `events`. The  `events`  table holds values of all of the user events in the action column (_‘like’, ‘comment’, or ‘post’_).

Write a query to get the percentage of users that have never liked or commented. Round to two decimal places.

**Example:**

**Input:**

`users`  table


|  Columns   |   Type   |
|------------|----------|
| id         | INTEGER  |
| name       | VARCHAR  |
| created_at | DATETIME |




`events`  table


|  Columns   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| action     | VARCHAR  |
| created_at | DATETIME |




**Output:**




|    Columns    | Type  |
|---------------|-------|
| percent_never | FLOAT |



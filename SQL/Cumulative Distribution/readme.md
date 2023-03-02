
Given the two tables, write a SQL query that creates a cumulative distribution of the number of comments per user. Assume bin buckets class intervals of one.

**Example:**

**Input:**

`users`  table


|     Columns     |   Type   |
|-----------------|----------|
| id              | INTEGER  |
| name            | VARCHAR  |
| created_at      | DATETIME |
| neighborhood_id | INTEGER  |
| sex             | VARCHAR  |




`comments`  table


|  Columns   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| body       | VARCHAR  |
| created_at | DATETIME |




**Output:**



|  Columns  |  Type   |
|-----------|---------|
| frequency | INTEGER |
| cum_total | FLOAT   |



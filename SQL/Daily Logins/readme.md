
Let’s say we are given a table  `user_logins`.

Using this table, calculate how many users logged in an identical number of times on January 1st, 2022.

For example, it may be the case that on that date three users logged in seven times, four users logged in five times, two users logged in ten times, etc.

**Example:**

**Input:**

`user_logins`  table


|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| user_id    | INTEGER  |
| login_date | DATETIME |



**Output:**


|      Column      |  Type   |
|------------------|---------|
| number_of_logins | INTEGER |
| number_of_users  | INTEGER |



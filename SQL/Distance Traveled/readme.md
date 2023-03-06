
Given the tables  `users`  and  `rides`, write a query to report the distance traveled by each user in descending order.

**Example:**

**Input:**

`users`  table


| Columns |  Type   |
|---------|---------|
| id      | INTEGER |
| name    | INTEGER |




`rides`  table


|      Columns      |  Type   |
|-------------------|---------|
| id                | INTEGER |
| passenger_user_id | INTEGER |
| distance          | FLOAT   |




**Output:**


|      Columns      |  Type   |
|-------------------|---------|
| name              | VARCHAR |
| distance_traveled | FLOAT   |



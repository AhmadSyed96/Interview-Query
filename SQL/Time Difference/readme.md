
You work at a ride-sharing company and are given a table containing information about the rides of users.

Write a query to get the duration (in minutes) of each ride longer than two hours. Sort the results by duration in descending order.

`rides`  table:


|      Columns      |   Type   |
|-------------------|----------|
| id                | INTEGER  |
| passenger_user_id | INTEGER  |
| start_dt          | DATETIME |
| end_dt            | DATETIME |
| distance          | FLOAT    |
| ride_region       | VARCHAR  |
| is_completed      | INTEGER  |




**Output:**



|      Column      |  Type   |
|------------------|---------|
| duration_minutes | INTEGER |



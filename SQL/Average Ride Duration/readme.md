
Let’s say you work at Uber. You want to learn how long Uber rides are taking for individual users.

Given a  `rides`  table, write a query to find the average duration of all rides in minutes. Sort results by  `passenger_user_id`  ascending.

**Input**

**Example:**

`rides`  table


|      Column       |   Type   |
|-------------------|----------|
| id                | INTEGER  |
| passenger_user_id | INTEGER  |
| start_dt          | DATETIME |
| end_dt            | DATETIME |
| distance          | FLOAT    |
| ride_region       | VARCHAR  |
| is_completed      | INTEGER  |



**Output**



|      Column       |  Type   |
|-------------------|---------|
| passenger_user_id | INTEGER |
| avg_time          | FLOAT   |



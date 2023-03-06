
Given two tables, search_events and users, write a query to find the three age groups (bucketed by decade: age  `0-9`  falls into group  `0`, age  `10-19`  to group  `1`, …,  `90-99`  to group  `9`, with the endpoint included) with the highest clickthrough rate in 2021. If two or more groups have the same clickthrough rate, the older group should have priority.

**Hint:**  If a user that clicked the link on 1/1/2021 is 29 years old on that day and has a birthday tomorrow on 2/1/2021, they fall into the [20-29] category. If the same user clicked on another link on 2/1/2021, he turned 30 and will fall into the [30-39] category.

**Example:**

**Input:**

`search_events`  table


|   Columns   |   Type   |
|-------------|----------|
| search_id   | INTEGER  |
| query       | VARCHAR  |
| has_clicked | BOOLEAN  |
| user_id     | INTEGER  |
| search_time | DATETIME |



`users`  table


|  Columns  |   Type   |
|-----------|----------|
| id        | INTEGER  |
| name      | VARCHAR  |
| birthdate | DATETIME |



**Output:**



|  Columns  |  Type   |
|-----------|---------|
| age_group | VARCHAR |
| ctr       | FLOAT   |



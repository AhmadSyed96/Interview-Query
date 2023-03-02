
Write a query to identify the manager with the biggest team size.

You may assume there is only one manager with the largest team size.

**Example:**

**Input:**

`employees`  table


|   Column   |  Type   |
|------------|---------|
| id         | INTEGER |
| name       | VARCHAR |
| manager_id | INTEGER |



`managers`  table


| Column |  Type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |
| team   | VARCHAR |



**Output:**


|  Column   |  Type   |
|-----------|---------|
| manager   | VARCHAR |
| team_size | INTEGER |



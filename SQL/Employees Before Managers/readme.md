
You’re given two tables: employees and managers. Find the names of all employees who joined before their manager.

**Example:**

**Input:**

`employees`  table


|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| first_name | VARCHAR  |
| last_name  | VARCHAR  |
| manager_id | INTEGER  |
| join_date  | DATETIME |



`managers`  table


|  Column   |   Type   |
|-----------|----------|
| id        | INTEGER  |
| name      | VARCHAR  |
| join_date | DATETIME |



**Output:**


|    Column     |  Type   |
|---------------|---------|
| employee_name | VARCHAR |




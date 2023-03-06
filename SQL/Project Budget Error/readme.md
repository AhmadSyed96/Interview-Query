
We’re given two tables. One is named  `projects`  and the other maps employees to the projects they’re working on.

We want to select the five most expensive projects by budget to employee count ratio. But let’s say that we’ve found a bug where there exist duplicate rows in the  `employee_projects`  table.

Write a query to account for the error and select the top five most expensive projects by budget to employee count ratio.

**Example:**

**Input:**

`projects`  table


|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| title      | VARCHAR  |
| state_date | DATETIME |
| end_date   | DATETIME |
| budget     | INTEGER  |



`employee_projects`  table


|   Column    |  Type   |
|-------------|---------|
| project_id  | INTEGER |
| employee_id | INTEGER |



**Output:**



|       Column        |  Type   |
|---------------------|---------|
| title               | VARCHAR |
| budget_per_employee | FLOAT   |



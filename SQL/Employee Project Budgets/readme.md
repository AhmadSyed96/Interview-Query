
We’re given two tables. One is named  `projects`  and the other maps employees to the projects they’re working on.

Write a query to get the top five most expensive projects by budget to employee count ratio.

_Note: Exclude projects with 0 employees. Assume each employee works on only one project._

`projects`  table


|  Columns   |   Type   |
|------------|----------|
| id         | INTEGER  |
| title      | VARCHAR  |
| state_date | DATETIME |
| end_date   | DATETIME |
| budget     | INTEGER  |



`employee_projects`  table


|   Columns   |  Type   |
|-------------|---------|
| project_id  | INTEGER |
| employee_id | INTEGER |




**Output:**


|       Columns       |  Type   |
|---------------------|---------|
| title               | VARCHAR |
| budget_per_employee | INTEGER |



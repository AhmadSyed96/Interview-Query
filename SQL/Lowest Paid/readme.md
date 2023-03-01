
Given tables  `employees`,  `employee_projects`, and `projects`, find the 3 lowest-paid employees that have completed at least 2 projects.

_Note: incomplete projects will have an end date of  `NULL`  in the projects table._

**Example:**

**Input:**

`employees`  table

|    Column     |  Type   |
|---------------|---------|
| id            | INTEGER |
| first_name    | VARCHAR |
| last_name     | VARCHAR |
| salary        | INTEGER |
| department_id | INTEGER |


`employee_projects`  table


|   Column    |  Type   |
|-------------|---------|
| employee_id | INTEGER |
| project_id  | INTEGER |


`projects`  table

|   Column   |  Type   |
|------------|---------|
| id         | INTEGER |
| title      | VARCHAR |
| start_date | DATE    |
| end_date   | DATE    |
| budget     | INTEGER |


**Output:**

|       Column       |  Type   |
|--------------------|---------|
| employee_id        | INTEGER |
| salary             | INTEGER |
| completed_projects | INTEGER |



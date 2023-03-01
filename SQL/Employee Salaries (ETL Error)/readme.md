
Let’s say we have a table representing a company payroll schema.

Due to an ETL error, the  _employees_ table instead of updating the salaries every year when doing compensation adjustments, did an insert instead. The head of HR still needs the current salary of each employee.

Write a query to get the current salary for each employee.

_Note: Assume no duplicate combination of first and last names. (I.E. No two John Smiths)_

**Example:**

**Input:**

`employees` table


|    Column     |  Type   |
|---------------|---------|
| id            | VARCHAR |
| first_name    | VARCHAR |
| last_name     | VARCHAR |
| salary        | INTEGER |
| department_id | INTEGER |



**Output:**

|   Column   |  Types  |
|------------|---------|
| first_name | VARCHAR |
| last_name  | VARCHAR |
| salary     | INTEGER |



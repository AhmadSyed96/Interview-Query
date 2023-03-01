
Given the  `employees`  and  `departments`  table, write a query to get the top 3 highest employee salaries by department. If the department contains less that 3 employees, the top 2 or the top 1 highest salaries should be listed (assume that each department has at least 1 employee).

_Note: The output should include the full name of the employee in one column, the department name, and the salary. The output should be sorted by department name in ascending order and salary in descending order._

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



`departments`  table


| Column |  Type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |



**Output**:


|     Column      |  Type   |
|-----------------|---------|
| employee_name   | VARCHAR |
| department_name | VARCHAR |
| salary          | INTEGER |



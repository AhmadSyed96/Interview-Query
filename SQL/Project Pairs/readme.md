
Write a query to return pairs of projects where the end date of one project matches the start date of another project.

**Example:**

**Input:**

`projects`  table


|  Columns   |   Type   |
|------------|----------|
| id         | INTEGER  |
| title      | VARCHAR  |
| start_date | DATETIME |
| end_date   | DATETIME |
| budget     | FLOAT    |




**Output**


|       Columns       |   Type   |
|---------------------|----------|
| project_title_end   | VARCHAR  |
| project_title_start | VARCHAR  |
| date                | DATETIME |




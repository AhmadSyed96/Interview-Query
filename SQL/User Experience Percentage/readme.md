
Given a table called  `user_experiences`, write a query to determine the percentage of users that held the title of “Data Analyst” immediately before holding the title “Data Scientist”.

Immediate is defined as the user holding no other titles between the “Data Analyst” and “Data Scientist” roles.

**Example:**

**Input:**

`user_experiences`  table

|    Column     |   Type   |
|---------------|----------|
| id            | INTEGER  |
| position_name | VARCHAR  |
| start_date    | DATETIME |
| end_date      | DATETIME |
| user_id       | INTEGER  |


**Output:**


|   Column   | Type  |
|------------|-------|
| percentage | FLOAT |



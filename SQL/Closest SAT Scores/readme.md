
Given a table of students and their SAT test scores, write a query to return the two students with the closest test scores with the score difference.

If there are multiple students with the same minimum score difference, select the student name combination that is higher in the alphabet.

**Example:**

**Input:**

`scores`  table


| Column  |  Type   |
|---------|---------|
| id      | INTEGER |
| student | VARCHAR |
| score   | INTEGER |



**Output:**

|    Column     |  Type   |
|---------------|---------|
| one_student   | VARCHAR |
| other_student | VARCHAR |
| score_diff    | INTEGER |



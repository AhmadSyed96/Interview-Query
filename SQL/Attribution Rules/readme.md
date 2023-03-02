
Write a query that creates an attribution rule for each user. If the user visited Facebook or Google at least once then the attribution is labeled as “paid.” Otherwise, the attribution is labeled as “organic.”

**Example:**

**Input:**

`user_sessions`  table


|   Column   |   Type   |
|------------|----------|
| created_at | DATETIME |
| session_id | INTEGER  |
| user_id    | INTEGER  |



`attribution`  table


|   Column   |  Type   |
|------------|---------|
| session_id | INTEGER |
| channel    | VARCHAR |



**Output:**


|  Column   |  Type   |
|-----------|---------|
| user_id   | INTEGER |
| attribute | VARCHAR |



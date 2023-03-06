
A dating website’s schema is represented by a table of people that like other people. The table has three columns. One column is the  `user_id`, another column is the  `liker_id`  which is the  `user_id`  of the user doing the liking, and the last column is the  `date time`  that the like occurred.

Write a query to count the number of liker’s likers (the users that like the likers) if the liker has one.

**Example:**

**Input:**

`likes`  table


|  Columns   |   Type   |
|------------|----------|
| user_id    | VARCHAR  |
| created_at | DATETIME |
| liker_id   | VARCHAR  |



**Output:**



| Columns |  Type   |
|---------|---------|
| user    | VARCHAR |
| count   | INTEGER |



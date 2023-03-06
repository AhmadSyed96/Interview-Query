
You’re given three tables,  `users`,  `transactions`  and  `events`. We’re interested in how user activity affects user purchasing behavior.

The events table holds data for user events on the website where the  `action` field would equal values such as  `like` and `comment`.

Write a query to prove if users that interact on the website (likes, comments) convert towards purchasing at a higher volume than users that do not interact.

**users**  table


|  Columns   |   Type   |
|------------|----------|
| id         | INTEGER  |
| name       | VARCHAR  |
| created_at | DATETIME |



**transactions**  table


|  Columns   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| name       | VARCHAR  |
| created_at | DATETIME |



**events**  table



|  Columns   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| action     | VARCHAR  |
| created_at | DATETIME |



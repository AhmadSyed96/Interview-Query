
We’re given three tables representing a forum of users and their comments on posts.

Write a query to get the top three users that got the most upvotes on their comments written in 2020.

_Note: Do not count deleted comments and upvotes by users on their own comments_

**Example:**

**Input:**

`users`  table


|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| created_at | DATETIME |
| username   | VARCHAR  |




`comments`  table


|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| created_at | datetime |
| post_id    | INTEGER  |
| user_id    | INTEGER  |
| is_deleted | BOOLEAN  |




`comment_votes`  table


|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| created_at | DATETIME |
| user_id    | INTEGER  |
| comment_id | INTEGER  |
| is_upvote  | BOOLEAN  |




**Output:**





|  Column  |  Type   |
|----------|---------|
| id       | INTEGER |
| username | VARCHAR |
| upvotes  | INTEGER |




You’re given three tables.

An  **ads**  table holds an ID and the advertisement name like “Labor day shirts sale”. The  **feed_comments**  table holds the comments on ads by different users that occur in the regular feed. The  **moments_comments**  table holds the comments on ads by different users in the moments section.

Write a query to get the percentage of comments, by ad, that occurs in the feed versus mentions sections of the app.

**Example:**

**Input:**

`feed_comments`  table



|  Columns   |  Type   |
|------------|---------|
| ad_id      | integer |
| user_id    | integer |
| comment_id | integer |



`moments_comments`  table


|  Columns   |  Type   |
|------------|---------|
| ad_id      | INTEGER |
| user_id    | INTEGER |
| comment_id | INTEGER |




`ads`  table



| column |  type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |



**Output:**



|    name     | percentage_feed | percentage_moments |
|-------------|-----------------|--------------------|
| Labor Day   |              .6 |                 .4 |
| Polo Shirts |             .85 |                .15 |



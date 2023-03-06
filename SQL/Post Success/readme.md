
Consider the  `events`  table which contains information about the phases of writing a new social media post.

The  `action`  column can have values  `post_enter`,  `post_submit`, or  `post_canceled`  for when a user starts to write (`post_enter`), ends up canceling their post (`post_cancel`), or posts it (`post_submit`).

Write a query to get the post success rate for each day in the month of January 2020.

You can assume that a single user may only make one post per day.

**Example:**

**Input:**

`events` table



|   Column   |   Type   |
|------------|----------|
| id         | INTEGER  |
| user_id    | INTEGER  |
| created_at | DATETIME |
| action     | VARCHAR  |
| url        | VARCHAR  |
| platform   | VARCHAR  |



**Sample:**


| user_id | created_at | event_name  |
|---------|------------|-------------|
|     123 | 2019-01-01 | post_enter  |
|     123 | 2019-01-01 | post_submit |
|     456 | 2019-01-02 | post_enter  |
|     456 | 2019-01-02 | post_cancel |




**Output:**


|      Column       |   Type   |
|-------------------|----------|
| dt                | DATETIME |
| post_success_rate | FLOAT    |




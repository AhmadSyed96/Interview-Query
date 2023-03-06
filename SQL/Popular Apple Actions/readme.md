
Write a query to determine the top 5 actions performed during the month of November 2020, for actions performed on an Apple platform (iPhone, iPad).

The  `events`  table tracks every time a user performs a certain action (like post_enter, etc.) on a platform (android, web, etc.).

The output should include the  `action`  performed and it’s  `rank`  in ascending order. If two actions are performed equally, they should have the same rank.

**Example:**

**Input:**

`events`  table


|   Column   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| created_at | DATETIME |
| action     | VARCHAR  |
| platform   | VARCHAR  |



**Output:**


| Column |  Type   |
|--------|---------|
| action | VARCHAR |
| ranks  | INTEGER |



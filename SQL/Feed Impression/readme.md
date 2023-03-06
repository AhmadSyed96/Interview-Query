
Let’s say you work at Pinterest. On Pinterest’s internal database, the table  `pins`  contains an identifier number and creation date/time of pins (content such as pictures or videos) that a user posted on his profile.

The table  `event_log`  is a log table containing data about all actions on pins.

Possible action types are:

-   `"View"`  - Logged when pins appear on a user’s screen.
-   `"Engagement"`  - Logged when actions such as saves or pin-clicks occur.

Write a query to determine the percentage of users that have viewed at least one content within seven days from the content being posted and with at least one engagement recorded on any pin, regardless of when it occurred.

**Example:**

**Input:**

`pins`  table


|   Column   |   Type   |
|------------|----------|
| pin_id     | INTEGER  |
| created_at | DATETIME |



`event_log`  table


|   Column    |   Type   |
|-------------|----------|
| event_id    | INTEGER  |
| pin_id      | INTEGER  |
| user_id     | INTEGER  |
| action_type | VARCHAR  |
| action_date | DATETIME |



**Output**:


|      Column      | Type  |
|------------------|-------|
| percent_of_users | FLOAT |



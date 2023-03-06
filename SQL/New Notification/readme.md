
Twitter wants to roll out more push notifications to users because they think users are missing out on good content. Twitter decides to do this in an A/B test.

Let’s say that after we release more notifications, we suddenly see the total number of unsubscribes increase.

We’re given two tables,  `events` where actions are  `login`,  `nologin`, and  `unsubscribe`  and another table called `variants`  where user’s are bucketed into a `control`  and a `variant`  a/b test.

Given these tables, write a query to display a graph to understand how unsubscribes are affecting login rates over time.

_Note: Let’s say that all users are automatically put into the A/B test._

**Example:**

**Input:**

`events`  table


|   Column   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| created_at | DATETIME |
| action     | VARCHAR  |




**Output:**

`variants`  table



|   Column   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| created_at | DATETIME |
| action     | VARCHAR  |



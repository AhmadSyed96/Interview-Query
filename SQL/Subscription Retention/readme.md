
Given a table of  `subscriptions`, write a query to get the retention rate of each monthly cohort for each  `plan_id`  for the three months after sign-up.

Order your output by  `start_month`,  `plan_id`, then  `num_month`.

If an  `end_date`  is in the same month as  `start_date`  we say the subscription was  **not retained**  in the first month.

If the  `end_date`  occurs in the month after the month of  `start_date`, the subscription was not retained in the second month. And so on for the third.

The  `end_date`  field is  `NULL`  if the user has not canceled.

**Example:**

**Input:**

`subscriptions`  table


|   Column   |   Type   |
|------------|----------|
| user_id    | INTEGER  |
| start_date | DATETIME |
| end_date   | DATETIME |
| plan_id    | VARCHAR  |



**Output:**


|   Column    |   Type   |
|-------------|----------|
| start_month | DATETIME |
| num_month   | INTEGER  |
| plan_id     | VARCHAR  |
| retained    | FLOAT    |



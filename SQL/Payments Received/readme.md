
You’re given two tables,  _payments_ and  _users_. The payments table holds all payments between users with the `payment_state`  column consisting of either  `"success"`  or  `"failed"`.

How many customers that signed up in January 2020 had a combined (successful) sending and receiving volume greater than $100 in their first 30 days?

_Note: The  `sender_id`  and  `recipient_id`  both represent the  `user_id`._

`payments`  table


|    Columns    |   Type   |
|---------------|----------|
| payment_id    | INTEGER  |
| sender_id     | INTEGER  |
| recipient_id  | INTEGER  |
| created_at    | DATETIME |
| payment_state | VARCHAR  |
| amount_cents  | INTEGER  |




`users`  table


|  Columns   |   Type   |
|------------|----------|
| id         | INTEGER  |
| created_at | DATETIME |




**Output:**


|    Columns    |  Type   |
|---------------|---------|
| num_customers | INTEGER |




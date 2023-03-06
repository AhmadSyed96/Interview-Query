
We’re given two tables.  `friend_requests`  holds all the friend requests made and  `friend_accepts`  is all of the acceptances.

Write a query to find the overall acceptance rate of friend requests.

_Note: Round results to 4 decimal places._

**Example:**

**Input:**

`friend_requests`  table


|    Column    |   Type   |
|--------------|----------|
| requester_id | INTEGER  |
| requested_id | INTEGER  |
| created_at   | DATETIME |



`friend_accepts`  table


|    Column    |   Type   |
|--------------|----------|
| acceptor_id  | INTEGER  |
| requester_id | INTEGER  |
| created_at   | DATETIME |



**Output:**


|     Column      | Type  |
|-----------------|-------|
| acceptance_rate | FLOAT |




Given two tables:  `accounts`, and  `downloads`, find the average number of downloads for free vs paying accounts, broken down by day.

_Note: You only need to consider accounts that have had at least one download before when calculating the average._

_Note: round  `average_downloads`  to 2 decimal places._

**Example:**

**Input:**

`accounts` table


|     Column      |  Type   |
|-----------------|---------|
| account_id      | INTEGER |
| paying_customer | BOOLEAN |



`downloads` table


|    column     |   type   |
|---------------|----------|
| account_id    | INTEGER  |
| download_date | DATETIME |
| downloads     | INTEGER  |



**Output:**


|      Column       |   Type   |
|-------------------|----------|
| download_date     | DATETIME |
| paying_customer   | BOOLEAN  |
| average_downloads | FLOAT    |



Find the three best-performing days ever recorded for each advertiser who achieved the highest weekly revenue.

Note: You may assume that all the transactions happened within the same year. You may assume that every record within the amount column is different.

`advertisers`  table


|     Column      |  Type   |
|-----------------|---------|
| advertiser_id   | INTEGER |
| advertiser_name | TEXT    |



`revenue`  table


|      Column      |  Type   |
|------------------|---------|
| payment_id       | INTEGER |
| advertiser_id    | INTEGER |
| transaction_date | DATE    |
| amount           | INTEGER |



**Output:**


|      Column      |  Type   |
|------------------|---------|
| advertiser_name  | INTEGER |
| transaction_date | DATE    |
| amount           | INTEGER |



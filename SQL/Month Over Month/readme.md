
You’re given a table called  `annual_payments`  for an annually billed B2B SAAS subscription product.

`annual_payments`  table


|       id        | INTEGER  |
|-----------------|----------|
| status          | VARCHAR  |
| user_id         | INTEGER  |
| created_at      | DATETIME |
| amount          | FLOAT    |
| amount_refunded | FLOAT    |
| product         | VARCHAR  |
| last_updated    | DATETIME |



Users pay for the three different products:  `'PDF Editor'`,  `'Cloud Storage'`, and  `'Mobile CRM'`.

How would you formulate a query to calculate the average annual retention, for each subsequent year, at the end of the year?

Retention rate is calculated as a percentage of active subscriptions at the end of the year  T  in the active subscriptions at the end of the previous year (T−1).

**Example 1:**

User 1 bought a subscript to  `PDF editor`  in 2019 for the first time and renewed their subscription in 2020. In 2021, they canceled their subscription. Retention rates should be calculated as:


| 2019 | 2020 | 2021 |
|------|------|------|
| 0.00 | 1.00 | 0.00 |



**Example 2:**

User 2 bought a subscription to  `'PDF Editor'`  in 2019 for the first time, renewed their subscription in 2020, and canceled a few days later in 2020. Retention rates should be calculated as:


| 2019 | 2020 | 2021 |
|------|------|------|
| 0.00 | 0.00 | 0.00 |



Notes:

1.  The status column may contain the values  `'paid'`,  `'refunded'`, or  `'failed'`.
2.  A  `'failed'`  payment equates to a user canceling their subscription on the date the next payment is due.
3.  If a user refunds a successful payment, then the row gets updated, and the status becomes  `'refunded'`. The date of refund is recorded in  `last_updated`.
4.  When a refund occurs in year  T, the subscription is canceled. Users may purchase the same product again in the subsequent years, and it is considered a new purchase.


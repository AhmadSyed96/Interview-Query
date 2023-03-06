
Let’s say you work for a small airline. You’re given three tables:  `flights`,  `planes`, and  `flight_purchases`.

Write a query to find the number of unpurchased seats for each flight.

For the purposes of this question, assume that there will be no entries in the  `flight_purchases`  table for flights or seats that do not exist.

**Example:**

**Input:**

`flights`  table


|  Column  |  Type   |
|----------|---------|
| id       | INTEGER |
| plane_id | INTEGER |




`planes`  table


|     Column      |  Type   |
|-----------------|---------|
| id              | INTEGER |
| number_of_seats | INTEGER |




`flight_purchases`  table



|  Column   |  Type   |
|-----------|---------|
| flight_id | INTEGER |
| seat_id   | INTEGER |



**Output:**


|   Column   |  Type   |
|------------|---------|
| flight_id  | INTEGER |
| free_seats | INTEGER |





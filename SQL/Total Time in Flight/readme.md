
Let’s say you work in air traffic control. You are given the table below containing information on flights between two cities.

Write a query to find out how much time,  **in minutes**  (rounded down), each plane spent in the air each day.

_Note: Both cities are in the same time zone, so you do not need to worry about converting time zones._

`flights`  table

**Example:**

**Input:**


|       Columns        |   Type   |
|----------------------|----------|
| id                   | INTEGER  |
| destination_location | VARCHAR  |
| source_location      | VARCHAR  |
| plane_id             | INTEGER  |
| flight_start         | DATETIME |
| flight_end           | DATETIME |



**Output:**


|   Columns    |  Type   |
|--------------|---------|
| plane_id     | INTEGER |
| calendar_day | VARCHAR |
| time_in_min  | INTEGER |



Please give  `calendar_day`  in the format  `YYYY-MM-DD`

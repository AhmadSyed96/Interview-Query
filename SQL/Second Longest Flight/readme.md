
Given a table of  `flights`, extract the 2nd longest flight between each pair of cities. Order the flights by the flight  `id`  ascending.

_Note: For any cities  `X`  and  `Y`,  `(source_location=X, destination_location=Y)`  and  `(source_location=Y, destination_location=X)`  are counted as the same pair of cities._

_Note: If there are fewer than two flights between two cities, there is no 2nd longest flight._

**Example:**

**Input:**

`flights`  table


|        Column        |   Type   |
|----------------------|----------|
| id                   | INTEGER  |
| destination_location | VARCHAR  |
| source_location      | VARCHAR  |
| plane_id             | INTEGER  |
| flight_start         | DATETIME |
| flight_end           | DATETIME |



**Output:**


|        Column        |   Type   |
|----------------------|----------|
| id                   | INTEGER  |
| destination_location | VARCHAR  |
| source_location      | VARCHAR  |
| flight_start         | DATETIME |
| flight_end           | DATETIME |



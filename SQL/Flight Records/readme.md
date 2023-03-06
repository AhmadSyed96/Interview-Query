
Write a query to create a new table, named flight routes, that displays unique pairs of two locations.

**Example:**

_Note: Duplicate pairs from the  `flights`  table, such as Dallas to Seattle and Seattle to Dallas, should have one entry in the flight routes table._

`flights`  table

 
|        Column        |  Type   |
|----------------------|---------|
| id                   | INTEGER |
| source_location      | VARCHAR |
| destination_location | VARCHAR |



**Output:**


|     Column      |  Type   |
|-----------------|---------|
| destination_one | VARCHAR |
| destination_two | VARCHAR |




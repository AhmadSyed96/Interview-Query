
The table  `packet_rates`  contains data about wireless packages sent from multiple devices to different networks (SSID).

Write a query that returns, for each SSID, the largest number of packages sent by a single device in the first 10 minutes of January 1st, 2022.

**Example:**

**Input:**

`packet_rates`  table


|    Column     |   Type   |
|---------------|----------|
| packet_id     | INTEGER  |
| ssid          | VARCHAR  |
| mac_address   | VARCHAR  |
| time_captured | DATETIME |
| package_size  | INTEGER  |



**Outpuvt:**



|           Column            |  Type   |
|-----------------------------|---------|
| ssid                        | VARCHAR |
| max_number_of_packages_sent | INTEGER |



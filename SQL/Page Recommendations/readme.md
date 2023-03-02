
Write a query to get the percentage of recommendations for each page by users in the same postal code as the page.

_Note: A page can sponsor multiple postal codes._

**Example:**

**Input:**

`page_sponsorships`  table


|   Column    |  Type   |
|-------------|---------|
| page_id     | INTEGER |
| postal_code | VARCHAR |
| price       | FLOAT   |




`recommendations`  table



| Column  |  Type   |
|---------|---------|
| user_id | INTEGER |
| page_id | INTEGER |



`users`  table


|   Column    |  Type   |
|-------------|---------|
| id          | INTEGER |
| postal_code | VARCHAR |




**Output:**


|   Column    |  Type   |
|-------------|---------|
| page        | INTEGER |
| postal_code | VARCHAR |
| percentage  | FLOAT   |



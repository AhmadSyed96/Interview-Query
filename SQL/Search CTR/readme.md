
You’re given a table that represents search results from searches on Facebook. The  `query`  column is the search term,  `position`  column represents each position the search result came in, and the  `rating`  column represents the human rating from 1 to 5 where 5 is high relevance and 1 is low relevance.

Each row in the  `search_events`  table represents a single search with the  `has_clicked`  column representing if a user clicked on a result or not. We have a hypothesis that the CTR is dependent on the search result rating.

Write a query to return data to support or disprove this hypothesis.

**Example:**

**Input:**

`search_results`  table


|  Column   |  Type   |
|-----------|---------|
| query     | VARCHAR |
| result_id | INTEGER |
| position  | INTEGER |
| rating    | INTEGER |



`search_events`  table


|   Column    |  Type   |
|-------------|---------|
| search_id   | INTEGER |
| query       | VARCHAR |
| has_clicked | BOOLEAN |



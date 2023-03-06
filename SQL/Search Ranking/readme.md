
You’re given a table that represents search results from searches on Facebook. The  `query`  column is the search term,  `position`  column represents each position the search result came in, and the  `rating`  column represents the human rating of the result from 1 to 5 where 5 is high relevance and 1 is low relevance.

Write a query to get the percentage of search queries where all of the ratings for the query results are less than a rating of 3. Please round your answer to two decimal points.

**Example:**

**Input:**

`search_results`  table


|  Column   |         Type          |
|-----------|-----------------------|
| result_id | INTEGER (primary key) |
| query     | TEXT                  |
| position  | INTEGER               |
| rating    | INTEGER               |



**Output:**


|         Column         | Type  |
|------------------------|-------|
| percentage_less_than_3 | FLOAT |



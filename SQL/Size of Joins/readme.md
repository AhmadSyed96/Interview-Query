
Let’s say you work at Allstate. Allstate is running  `N`  online ads right now. The table  `ads`  contains all those ads, ranked by popularity via the  `id`  column (e.g., the entry with  `id = 1`  is the most popular, etc.).

Create a subquery or common table expression named  `top_ads`  containing the top 3 ads (by popularity) and return the number of rows that would result from the following operations

1.  `ads INNER JOIN top_ads`
2.  `ads LEFT JOIN top_ads`
3.  `ads RIGHT JOIN top_ads`
4.  `ads CROSS JOIN top_ads`

_Note: Please make the  `join_type`  column in your output have the values  `inner_join`,  `left_join`, etc. for each of their respective join types_

_Note: Please return only one query with each number in a different row_

**Example:**

**Input:**


| Column |  Type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |




**Output:**


|     Column     |  Type   |
|----------------|---------|
| join_type      | VARCHAR |
| number_of_rows | INTEGER |



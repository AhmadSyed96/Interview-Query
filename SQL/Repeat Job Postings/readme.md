
Given a table of job postings, write a query to retrieve the number of users that have posted each job only once and the number of users that have posted at least one job multiple times.

Each user has at least one job posting. Thus the sum of  `single_post`  and  `multiple_posts`  should equal the total number of distinct  `user_id`’s.

**Example:**

**Input:**

`job_postings`  table


|   Column    |   Type   |
|-------------|----------|
| id          | INTEGER  |
| job_id      | INTEGER  |
| user_id     | INTEGER  |
| date_posted | DATETIME |



**Output:**


|     Column     |  Type   |
|----------------|---------|
| single_post    | INTEGER |
| multiple_posts | INTEGER |





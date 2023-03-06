﻿
Let’s say we want to build a naive recommender. We’re given two tables, one table called  `friends`  with a  `user_id`  and  `friend_id`  columns representing each user’s friends, and another table called  `page_likes`  with a  `user_id`  and a  `page_id`  representing the page each user liked.

Write an SQL query to create a metric to recommend pages for each user based on recommendations from their friend’s liked pages.

_Note: It shouldn’t recommend pages that the user already likes._

**Example:**

**Input:**

`friends`  table


|  Column   |  Type   |
|-----------|---------|
| user_id   | INTEGER |
| friend_id | INTEGER |



`page_likes`  table


| Column  |  Type   |
|---------|---------|
| user_id | INTEGER |
| page_id | INTEGER |



**Output:**


|      Column      |  Type   |
|------------------|---------|
| user_id          | INTEGER |
| page_id          | INTEGER |
| num_friend_likes | INTEGER |



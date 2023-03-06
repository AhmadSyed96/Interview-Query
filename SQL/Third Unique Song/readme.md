
Given a table of  `song_plays`  and a table of  `users`, write a query to extract the earliest date each user played their third unique song.

_Note: If a user has listened to less than three unique songs, display their name but with a  `NULL`  date and song name_

**Example:**

**Input:**

`song_plays`  table


|   Column    |   Type   |
|-------------|----------|
| user_id     | INTEGER  |
| song_name   | TEXT     |
| date_played | DATETIME |



`users`  table


| Column |  Type   |
|--------|---------|
| id     | INTEGER |
| name   | VARCHAR |



**Output:**


|   Column    |   Type   |
|-------------|----------|
| name        | VARCHAR  |
| date_played | DATETIME |
| song_name   | TEXT     |



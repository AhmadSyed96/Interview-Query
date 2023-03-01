
Let’s say you work for Meta. You are given the table  `messenger_sends`. Find the total number of unique conversation threads.

_Note: In some entries, the  `receiver_id`  and  `sender_id`  are switched from the initial message. These entries should be treated as part of the same thread._

**Example:**

**Input:**

`messenger_sends`  table

|   Column    |  Type   |
|-------------|---------|
| id          | INTEGER |
| receiver_id | INTEGER |
| sender_id   | INTEGER |



**Output:**


|       Column       |  Type   |
|--------------------|---------|
| total_conv_threads | INTEGER |




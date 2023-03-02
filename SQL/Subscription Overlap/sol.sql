WITH cte as
    (SELECT
        s1.user_id as user1, s2.user_id as user2
    FROM
        subscriptions s1,subscriptions s2 
    WHERE
        ((s2.start_date BETWEEN s1.start_date and s1.end_date) OR (s2.end_date BETWEEN s1.start_date and s1.end_date))
        AND s1.user_id!=s2.user_id),
overlappers as
    (SELECT user1 AS user_id, 1 AS overlapper FROM cte 
    UNION
    SELECT user2, 1 AS overlapper FROM cte),
users as 
    (SELECT DISTINCT user_id FROM subscriptions)
SELECT  
    user_id, COALESCE(overlapper,0) as overlap
FROM
    users
LEFT JOIN
    overlappers USING(user_id)

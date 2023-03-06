WITH cte as
    (SELECT
        DISTINCT
        user_id,
        url,
        DATE(created_at) AS created_at
    FROM
        events),
cte2 as
    (SELECT
        *,
        created_at - INTERVAL ROW_NUMBER() OVER(PARTITION BY user_id, url ORDER BY created_at) DAY as asd
    FROM
        cte),
cte3 as
    (SELECT
        DISTINCT
        user_id
    FROM 
        cte2
    GROUP BY
        user_id, url, asd
    HAVING
        count(*) >= 7)
SELECT
    ROUND(count(cte3.user_id) / (SELECT count(DISTINCT user_id) FROM events),2) as precent_of_users
FROM
    cte3
    
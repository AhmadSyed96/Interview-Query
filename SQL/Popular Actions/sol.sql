WITH cte AS
    (SELECT
        action,
        count(*) as cnt
    FROM
        events
    WHERE
        created_at BETWEEN '2020-11-22' AND '2020-11-28'
    GROUP BY 
        1),
cte2 AS
    (SELECT
        action,
        RANK() OVER(ORDER BY cnt DESC) as rnk
    FROM
        cte)
SELECT
    action,
    rnk as ranks
FROM
    cte2
WHERE
    rnk < 6
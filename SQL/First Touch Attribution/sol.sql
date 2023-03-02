WITH cte AS
    (SELECT
        *
    FROM
        attribution
    JOIN
        user_sessions USING(session_id)),
first_att_dt as
    (SELECT
        user_id,
        MIN(created_at)
    FROM
        user_sessions
    WHERE
        user_id IN (SELECT user_id FROM cte WHERE conversion=1)
    GROUP BY 
        1)
SELECT
    user_id, channel 
FROM
    cte
WHERE
    (user_id, created_at) IN (SELECT * FROM first_att_dt)
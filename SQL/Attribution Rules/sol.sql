SELECT
    user_id,
    IF(SUM(CASE WHEN channel IN ('Facebook', 'Google') THEN 1 ELSE 0 END)>0,'paid','organic') AS attribute
FROM
    user_sessions
JOIN
    attribution USING(session_id)
GROUP BY 
    1
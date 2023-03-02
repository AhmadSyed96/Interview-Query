SELECT
    user_id,
    TIMESTAMPDIFF(DAY, MIN(created_at), MAX(created_at)) as no_of_days
FROM
    user_sessions
WHERE
    YEAR(created_at) = 2020
GROUP BY
    1

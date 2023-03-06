SELECT
    COUNT(DISTINCT user_id) as num_users_gave_like
FROM
    events
WHERE
    DATE(created_at) = '2020-06-06'
    AND action = 'like'
SELECT
    COUNT(DISTINCT user_id) as num_users_open_email
FROM
    events
WHERE
    action = 'email_opened'
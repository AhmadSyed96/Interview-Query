SELECT
    num_notfs as total_pushes,
    count(*) as frequency
FROM
    (SELECT
        users.id,
        count(notification_deliveries.notification) as num_notfs
    FROM
        notification_deliveries
    RIGHT JOIN
        users ON users.id = notification_deliveries.user_id
        and notification_deliveries.created_at < users.conversion_date
    WHERE 
        users.id in (SELECT id FROM users WHERE conversion_date IS NOT NULL)
    GROUP BY
        1) AS t1
GROUP BY
    1
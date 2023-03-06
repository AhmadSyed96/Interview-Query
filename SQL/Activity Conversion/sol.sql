WITH converters as
    (SELECT DISTINCT user_id, 1 as converter FROM transactions),
interacters as
    (SELECT DISTINCT user_id, 1 as interacter FROM events WHERE action in ('like', 'comment')),
user_statuses as
    (SELECT 
        users.id,
        COALESCE(converter,0) as is_converted,
        COALESCE(interacter,0) as has_interacted
    FROM
        users
    LEFT JOIN
        converters ON converters.user_id = users.id
    LEFT JOIN
        interacters ON interacters.user_id = users.id)
SELECT
    has_interacted,
    AVG(is_converted)
FROM
    user_statuses
GROUP BY
    1
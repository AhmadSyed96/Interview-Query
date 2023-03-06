WITH weekly_interactors as
    (SELECT
        DISTINCT user_id,
        1 AS weekly_interactor
    FROM
        pins
    JOIN
        event_log ON pins.pin_id = event_log.pin_id 
        AND event_log.action_date <= pins.created_at + INTERVAL 7 DAY
    WHERE 
        action_type = 'View'),
engagers as
    (SELECT
        DISTINCT user_id,
        1 as engaged_once
    FROM
        event_log
    WHERE
        action_type = 'Engagement'),
users as
    (SELECT
        DISTINCT user_id
    FROM
        event_log),
requirements as
    (SELECT
        users.user_id,
        COALESCE(weekly_interactor,0) as weekly_interactor,
        COALESCE(engaged_once,0) as engaged_once
    FROM
        users
    LEFT JOIN
        weekly_interactors USING(user_id)
    LEFT JOIN
        engagers USING(user_id))
SELECT
    AVG(weekly_interactor*engaged_once) as percent_of_users
FROM
    requirements
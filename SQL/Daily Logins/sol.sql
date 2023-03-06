WITH cte AS
    (SELECT
        user_id,
        count(*) as cnt
    FROM
        user_logins
    WHERE
        DATE(login_date) = '2022-01-01'
    GROUP BY
        1)
SELECT
    cnt as number_of_logins,
    count(*) as number_of_users
FROM
    cte
GROUP BY
    1
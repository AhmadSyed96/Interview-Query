SELECT
    item,
    SUM(price) as total_amount_spent
FROM
    purchases
JOIN
    (SELECT
        user_id
    FROM
        users
    WHERE
        YEAR(registration_date) = 2022) as qualified_users USING(user_id)
GROUP BY
    1
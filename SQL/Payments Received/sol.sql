WITH filtered_users as
    (SELECT
        *
    FROM
        users
    WHERE
        DATE_FORMAT(DATE(created_at), '%Y-%m-01') = '2020-01-01'),
send_amounts as
    (SELECT
        sender_id as user_id,
        SUM(amount_cents) as send_amount
    FROM
        payments
    JOIN
        filtered_users ON filtered_users.id = payments.sender_id
        AND payments.created_at <= filtered_users.created_at + INTERVAL 30 DAY
    WHERE
        payment_state = 'success'
    GROUP BY
        1),
receive_amounts as
    (SELECT
        recipient_id as user_id,
        SUM(amount_cents) as receive_amount
    FROM
        payments
    JOIN
        filtered_users ON filtered_users.id = payments.recipient_id
        AND payments.created_at <= filtered_users.created_at + INTERVAL 30 DAY
    WHERE
        payment_state = 'success'
    GROUP BY
        1),
full_join as
    (SELECT
        user_id, send_amount, COALESCE(receive_amount,0) as receive_amount
    FROM
        send_amounts
    LEFT JOIN
        receive_amounts USING(user_id)
    UNION
    SELECT
        user_id, COALESCE(send_amount,0) AS send_amount, receive_amount
    FROM
        send_amounts
    RIGHT JOIN
        receive_amounts USING(user_id))
SELECT
    count(*) as num_customers
FROM
    full_join
WHERE
    send_amount+receive_amount>10000
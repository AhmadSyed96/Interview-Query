WITH question_1 as
    (SELECT 
        1 as question_id, 
        count(*) as answer
    FROM 
        annual_payments),
question_2 as
    (SELECT
        2 as question_id,
        count(distinct user_id) as answer
    FROM
        annual_payments),
question_3 as
    (SELECT
        3 as question_id,
        sum(amount >= 100) as answer
    FROM
        annual_payments
    WHERE
        status = 'paid'),
question_4 as
    (SELECT
        4 as question_id,
        product as answer
    FROM
        annual_payments
    GROUP BY
        product
    ORDER BY
        sum(amount) DESC
    LIMIT
        1)
SELECT * FROM question_1
UNION
SELECT * FROM question_2
UNION
SELECT * FROM question_3
UNION
SELECT * FROM question_4
WITH number_of_comments as
    (SELECT
        users.id,
        count(comments.user_id) as num_cmnts
    FROM
        comments
    RIGHT JOIN
        users ON users.id = comments.user_id
    GROUP BY
        1)
SELECT
    sum(cnt) over(order by frequency) as cum_total,
    frequency
FROM
    (SELECT
        num_cmnts as frequency,
        count(*) as cnt
    FROM
        number_of_comments
    GROUP BY    
        1) AS t1

-- SELECT
--     users.id,
--     count(comments.user_id) as num_cmnts
-- FROM
--     comments
-- RIGHT JOIN
--     users ON users.id = comments.user_id
-- GROUP BY
--     1
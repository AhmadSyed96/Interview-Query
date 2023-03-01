WITH user_types AS
    (SELECT
        user_id,
        case when tot_swipes <= 10 then 10
            when tot_swipes > 10 and tot_swipes <=50 then 50
            else 100 end as swipe_threshold
    FROM
        (SELECT
            user_id,
            count(*) as tot_swipes
        FROM
            swipes
        GROUP BY
            1) AS t1)
SELECT
    variant,
    swipe_threshold,
    count(DISTINCT swipes.user_id) as num_users,
    10*SUM(is_right_swipe)/count(is_right_swipe) as mean_right_swipes
FROM
    swipes
JOIN
    variants USING(user_id)
JOIN
    user_types USING(user_id)
GROUP BY
    1,2

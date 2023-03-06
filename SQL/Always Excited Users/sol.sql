WITH bored_before AS
    (SELECT
        DISTINCT user_id
    FROM
        ad_impressions
    WHERE
        impression_id = 'Bored')
SELECT
    user_id
FROM
    ad_impressions
WHERE
    (user_id, dt) = ANY(
        SELECT
            user_id,
            MAX(dt)
        FROM
            ad_impressions
        GROUP BY
            1
    )
    AND impression_id = 'Excited'
    AND user_id NOT IN (SELECT * FROM bored_before)
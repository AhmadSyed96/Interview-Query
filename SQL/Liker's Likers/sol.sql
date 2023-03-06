SELECT
    user_id as user,
    count(*) as count
FROM
    likes
WHERE
    user_id in (SELECT liker_id FROM likes)
GROUP BY
    1
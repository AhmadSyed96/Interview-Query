SELECT
    friends.user_id,
    p1.page_id,
    count(*) AS num_friend_likes
FROM
    friends
LEFT JOIN
    page_likes p1 ON friends.friend_id = p1.user_id
LEFT JOIN
    page_likes p2 ON friends.user_id = p2.user_id
    AND p2.page_id = p1.page_id
WHERE
    p2.page_id IS NULL
GROUP BY
    1,2
SELECT
    comments.user_id as id,
    sum(is_upvote) as upvotes,
    username
FROM
    comment_votes
JOIN    
    comments ON comment_votes.comment_id = comments.id
JOIN
    users ON users.id = comments.user_id
WHERE
    comments.user_id != comment_votes.user_id
    AND is_deleted = 0
    AND YEAR(comments.created_at) = 2020
GROUP BY
    1,3
ORDER BY
    2 DESC
LIMIT
    3
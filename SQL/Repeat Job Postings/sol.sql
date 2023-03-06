
With cte AS
    (SELECT
        user_id,
        count(*) = count(DISTINCT job_id) as is_equal
    FROM
        job_postings
    GROUP BY
        1)
SELECT
    SUM(is_equal) as single_post,
    SUM(NOT is_equal) as multiple_posts
FROM
    cte

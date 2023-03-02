WITH paths as
    (SELECT
        ad_id,
        'feed' as path
    FROM
        feed_comments
    UNION ALL
    SELECT
        ad_id,
        'moments' as path
    FROM
        moments_comments),
counts_per_path as
    (SELECT
        ad_id,
        path,
        count(*) as cnt
    FROM
        paths
    GROUP BY
        1,2),
pivoted as
    (SELECT
        ad_id,
        sum(case when path = 'feed' then cnt end) as feed_count,
        sum(case when path = 'moments' then cnt end) as moments_count
    FROM
        counts_per_path
    GROUP BY
        1) 
SELECT
    name,
    feed_count / (feed_count + moments_count) as percentage_feed,
    moments_count / (moments_count + feed_count) as percentage_moments
FROM
    pivoted
JOIN 
    ads ON ads.id = pivoted.ad_id
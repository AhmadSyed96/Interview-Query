SELECT
    action,
    DENSE_RANK() OVER(order by count(*) desc) AS ranks
FROM
    events
WHERE
    LEFT(created_at, 7) = '2020-11'
    AND platform IN ('iPhone', 'iPad')
GROUP BY
    1
LIMIT 5
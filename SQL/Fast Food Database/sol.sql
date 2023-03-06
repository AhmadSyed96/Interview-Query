– Based on the above database schema, write a SQL query to find – the top three highest revenue items sold yesterday

SELECT
    item_name,
    sum(price*quantity)
FROM
    orders
JOIN
    items ON orders.item_id = items.item_id
WHERE
    created_at = CURDATE()-1
GROUP BY
    1
ORDER BY
    2 DESC
LIMIT
    3   
– Write a SQL query using the database schema to find – the percentage of customers that order drinks with their meal

SELECT
    (SELECT
        COUNT(DISTINCT user_id)
    FROM
        orders
    JOIN
        items ON orders.item_id = items.item_id
    WHERE
        item_name LIKE '%drink%')
    /
    (SELECT
        COUNT(DISTINCT user_id)
    FROM
        orders)
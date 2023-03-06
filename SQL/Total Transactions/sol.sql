SELECT 
 u.name
 ,u.id AS user_id
 ,ROUND(SUM(p.price * t.quantity ) ,2) AS total_cost 
FROM users u 
INNER JOIN transactions t 
    ON u.id = t.user_id 
INNER JOIN products p 
    ON p.id = t.product_id 
GROUP BY u.name 
ORDER BY total_cost DESC
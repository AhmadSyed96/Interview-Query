SELECT
    query,
    ROUND(AVG(rating/position),2) as avg_rating
FROM
    search_results
GROUP BY 
    1
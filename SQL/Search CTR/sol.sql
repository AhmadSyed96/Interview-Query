SELECT rating, 
       SUM(CASE WHEN has_clicked THEN 1 ELSE 0 END) AS clicks, 
       COUNT(*) AS searches, 
       SUM(CASE WHEN has_clicked THEN 1 ELSE 0 END) / COUNT(*) AS CTR
FROM search_events
JOIN search_results ON search_events.query = search_results.query
GROUP BY rating
ORDER BY 1
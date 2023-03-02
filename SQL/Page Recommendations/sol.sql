SELECT
    page_sponsorships.page_id as page,
    page_sponsorships.postal_code,
    SUM(users.postal_code=page_sponsorships.postal_code)/count(*) as percentage
FROM
    page_sponsorships
JOIN
    recommendations USING(page_id)
JOIN    
    users ON recommendations.user_id=users.id
GROUP BY
    1,2
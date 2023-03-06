WITH joined as    
    (SELECT 
        notification,
        nd.created_at as notification_date,
        u.id,
        u.conversion_date
    FROM 
        notification_deliveries nd
    JOIN 
        users u ON nd.user_id = u.id),
numbered as
    (SELECT
        id,
        notification,
        notification_date,
        conversion_date,
        ROW_NUMBER() OVER(PARTITION BY id ORDER BY notification_date DESC) ord
    FROM
        joined
    WHERE
        notification_date < conversion_date),
converted as
    (SELECT
        notification,
        COUNT(*) as total_converted
    FROM 
        numbered
    WHERE 
        ord = 1
    GROUP BY 
        1),
ntf_cnt as
    (SELECT
        notification,
        count(*) as tot_ntf
    FROM
        notification_deliveries
    GROUP BY
        1)
SELECT  
    ntf_cnt.notification,
    CASE WHEN total_converted IS NULL THEN 0 ELSE total_converted/tot_ntf END AS conversion_rate
FROM
    ntf_cnt
LEFT JOIN
    converted ON ntf_cnt.notification = converted.notification
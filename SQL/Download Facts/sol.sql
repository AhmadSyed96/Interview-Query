SELECT
    DATE_FORMAT(download_date, '%Y-%m-%dT00:00:00') as download_date,
    paying_customer,
    ROUND(AVG(downloads),2) as average_downloads
FROM
    downloads
LEFT JOIN
    accounts USING(account_id)
GROUP BY
    1,2
WITH cte as
    (SELECT
        ssid,
        mac_address,
        count(*) as cnt
    FROM
        packet_rates
    WHERE
        DATE(time_captured) = '2022-01-01'
        AND time_captured < '2022-01-01 00:10:00'
    GROUP BY 
        1,2)
SELECT
    ssid,
    max(cnt) as max_number_of_packages_sent
FROM
    cte
GROUP BY
    1
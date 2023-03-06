SELECT
    ROUND(100*(SELECT SUM(amount-amount_refunded) FROM annual_payments WHERE YEAR(created_at) = (SELECT YEAR(MIN(created_at)) FROM annual_payments)) / SUM(amount-amount_refunded),2) AS percent_first,
    ROUND(100*(SELECT SUM(amount-amount_refunded) FROM annual_payments WHERE YEAR(created_at) = (SELECT YEAR(MAX(created_at)) FROM annual_payments)) / SUM(amount-amount_refunded),2) AS percent_last
FROM
    annual_payments
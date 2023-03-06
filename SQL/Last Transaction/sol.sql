SELECT
    created_at,
    id,
    transaction_value
FROM
    bank_transactions
WHERE created_at in
    (SELECT
        MAX(created_at) as last_transaction
    FROM
        bank_transactions
    GROUP BY 
        DATE(created_at))
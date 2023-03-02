SELECT 
    AVG(transactions.shipping_address = users.address) AS home_address_percent
FROM 
    transactions 
JOIN 
    users ON users.id = transactions.user_id
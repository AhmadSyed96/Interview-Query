SELECT
    shipments.shipment_id,
    shipments.ship_date,
    shipments.customer_id,
    CASE
        WHEN shipments.ship_date BETWEEN 
            customers.membership_start_date AND membership_end_date
        THEN 'Y' ELSE 'N'
    END AS is_member,
    shipments.quantity
FROM
    shipments
JOIN
    customers USING(customer_id)
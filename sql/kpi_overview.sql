SELECT 
    SUM(total_price) as total_revenue,
    COUNT(DISTINCT transaction_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    ROUND(
        SUM(total_price)/NULLIF(COUNT(DISTINCT transaction_id),0),
        2
    ) AS average_order_value
    FROM transactions;
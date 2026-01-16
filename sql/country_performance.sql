--performance of each country in sales and revenue--
SELECT 
    c.country,
    SUM(t.total_price) AS total_revenue,
    COUNT(DISTINCT t.transaction_id) AS total_orders,
    COUNT(DISTINCT t.customer_id) AS customers
FROM transactions t
JOIN customers c
    ON t.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;

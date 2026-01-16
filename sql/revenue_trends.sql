--Used for performance monitoring--
SELECT 
    DATE_TRUNC('month',transaction_date) AS month,
    SUM(total_price) AS monthly_revenue
FROM transactions
GROUP BY month
ORDER BY month;


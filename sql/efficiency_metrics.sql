--measures monetization efficiency--
SELECT 
    ROUND(
        SUM(total_price)/NULLIF(COUNT(DISTINCT customer_id),0),
        2
    ) AS revenue_per_customer
FROM transactions;
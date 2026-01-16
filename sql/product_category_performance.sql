--reveals high-impact categories--
SELECT
    p.category,
    SUM(t.total_price) AS total_revenue,
    SUM(t.quantity) AS total_units_sold
FROM transactions t
JOIN products p
    ON t.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;
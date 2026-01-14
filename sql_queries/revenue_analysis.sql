# Revenue by product

SELECT
    p.product_name,
    SUM(oi.price_usd) AS total_revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

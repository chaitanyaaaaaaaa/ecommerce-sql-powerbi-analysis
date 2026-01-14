# Profit by product

SELECT
    p.product_name,
    SUM(oi.price_usd - oi.cogs_usd) AS total_profit
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC;

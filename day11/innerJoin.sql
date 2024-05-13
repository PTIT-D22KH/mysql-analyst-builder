USE bakery;

-- SELECT *
-- FROM customers c
-- INNER JOIN customer_orders co
--     ON c.customer_id = co.customer_id
-- ORDER BY c.customer_id
-- ;

-- SELECT *
-- FROM products;

-- SELECT *
-- FROM customer_orders;

SELECT p.product_name, SUM(order_total) AS total
FROM products p
JOIN customer_orders co
    ON p.product_id = co.product_id
GROUP BY product_name
ORDER BY 2
;
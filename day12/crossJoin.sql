USE bakery;
-- SELECT *
-- FROM customers
-- CROSS JOIN customer_orders
-- ;

SELECT c.customer_id, c.first_name, co.customer_id, order_id
FROM customers c
CROSS JOIN customer_orders co
ORDER BY c.customer_id
;
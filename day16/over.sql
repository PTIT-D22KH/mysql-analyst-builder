USE bakery;
-- SELECT c.customer_id, first_name, order_total ,
--     (
--         SELECT MAX(order_total)
--         FROM customer_orders
--     ) AS max_order_total
-- FROM customers c
-- JOIN customer_orders co
--     ON c.customer_id = co.customer_id
-- ;


-- SELECT c.customer_id, first_name, order_total ,MAX(order_total) OVER() AS max_order_total
-- FROM customers c
-- JOIN customer_orders co
--     ON c.customer_id = co.customer_id
-- ;



SELECT c.customer_id, first_name, order_total ,MAX(order_total) OVER(PARTITION BY customer_id) AS max_order_total
FROM customers c
JOIN customer_orders co
    ON c.customer_id = co.customer_id
;
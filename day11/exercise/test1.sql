USE bakery;
-- SELECT *
-- FROM customer_orders co 
-- JOIN customer_orders_review cor 
--     ON co.order_id = cor.order_id
--     AND co.customer_id = cor.customer_id
--     AND co.order_date = cor.order_date
-- ;


SELECT *
FROM customer_orders co 
JOIN customers c 
    ON co.customer_id = c.customer_id
JOIN products p 
    ON p.product_id = co.product_id
;
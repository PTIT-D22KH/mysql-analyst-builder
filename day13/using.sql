USE bakery;
SELECT c.customer_id, first_name, co.order_id
FROM customers c 
LEFT OUTER JOIN customer_orders co
        USING (customer_id) -- instead of ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id;
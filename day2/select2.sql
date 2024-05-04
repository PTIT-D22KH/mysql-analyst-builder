USE bakery;
SELECT customer_id, first_name
FROM customers;
-- seprate query
SELECT *
FROM customer_orders
WHERE product_id = 1001;
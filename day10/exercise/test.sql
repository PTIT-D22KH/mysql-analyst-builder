USE bakery;
-- SELECT state, COUNT(first_name)
-- FROM customers
-- WHERE state IN ('PA', 'TX', 'NY', 'CA', 'IL', 'FL', 'SC')
-- GROUP BY state
-- HAVING COUNT(first_name) = 1;

-- SELECT *
-- FROM customer_orders;

-- SELECT customer_id, product_id, COUNT(tip) as count_tips
-- FROM customer_orders
-- GROUP BY customer_id, product_id WITH ROLLUP
-- ;

-- SELECT customer_id, product_id, COUNT(tip) as count_tips
-- FROM customer_orders
-- GROUP BY ROLLUP(customer_id, product_id)
-- ;

-- SELECT customer_id, product_id, COUNT(tip) as count_tips
-- FROM customer_orders
-- GROUP BY ROLLUP(customer_id, product_id);


-- SELECT *
-- FROM customer_orders
-- HAVING customer_id = '100101';

CREATE DATABASE day10;
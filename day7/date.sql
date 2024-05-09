USE bakery;
-- SELECT * FROM customers;

-- SELECT NOW(),
-- CURDATE(),
-- CURTIME();

-- SELECT YEAR(NOW()),
-- MONTH(NOW()),
-- DAY(NOW());

-- SELECT * FROM customer_orders
-- WHERE YEAR(order_date) = YEAR(NOW()) - 2
-- ;

-- SELECT DAYNAME(NOW());

-- SELECT order_date, DAYNAME(order_date), MONTHNAME(order_date)
-- FROM customer_orders;

SELECT birth_date, DATE_FORMAT(birth_date, '%M %d %Y')
FROM customers;
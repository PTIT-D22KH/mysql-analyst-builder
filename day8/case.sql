USE bakery;
-- SELECT units_in_stock,
-- CASE 
--     WHEN units_in_stock < 20 THEN 'ORDER NOW!'
--     WHEN units_in_stock BETWEEN 21 AND 50 THEN 'Check in 3 days'
--     WHEN units_in_stock > 51 THEN 'In Stock'
-- END AS 'Order Status'

-- FROM products

-- ;


-- SELECT units_in_stock,
-- CASE 
--     WHEN units_in_stock < 20 THEN 'ORDER NOW!'
--     WHEN units_in_stock BETWEEN 21 AND 50 THEN 'Check in 3 days'
--     ELSE 'In Stock'
-- END AS 'Order Status'

-- FROM products

-- ;



SELECT order_id,
order_date,
CASE 
    WHEN YEAR(order_date) = YEAR(NOW()) - 2 THEN 'Active'
    WHEN YEAR(order_date) = YEAR(NOW()) - 3 THEN 'Last Year'
    ELSE 'Archived'
END AS 'Years'
FROM customer_orders;
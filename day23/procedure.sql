USE bakery;

CREATE PROCEDURE large_order_totals()
SELECT *
FROM bakery.customer_orders
WHERE order_total > 20;

CALL large_order_totals();


DELIMITER $$
CREATE PROCEDURE large_order_totals2()
BEGIN 
    SELECT *
    FROM bakery.customer_orders
    WHERE order_total > 20;
    SELECT *
    FROM bakery.customer_orders
    WHERE order_total > 5;
END $$

CALL large_order_totals2();

DROP PROCEDURE IF EXISTS orders_by_product;
DELIMITER $$
CREATE PROCEDURE orders_by_product(p_product_id INT)
BEGIN
    SELECT *
    FROM bakery.customer_orders
    WHERE product_id = p_product_id;
END $$

CALL orders_by_product(1001);
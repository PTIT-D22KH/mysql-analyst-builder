USE bakery;
DELIMITER $$
DROP PROCEDURE IF EXISTS sum_of_orders;
CREATE PROCEDURE sum_of_orders(p_product_id INT, OUT sum_totals DECIMAL(9, 2))
BEGIN
    DECLARE all_totals DECIMAL(9, 2);
    DECLARE percentage_total DECIMAL(9,2);
    SELECT SUM(order_total) 
    INTO sum_totals
    FROM bakery.customer_orders
    WHERE product_id = p_product_id;
    SELECT SUM(order_total)
    INTO all_totals
    FROM bakery.customer_orders;
    SET percentage_total = (sum_totals / all_totals * 100);
    SELECT sum_totals;
    SELECT all_totals;
    SELECT percentage_total;
END $$
DELIMITER ;

-- CALL sum_of_orders(1001);
SET @sum_totals = 0;
CALL bakery.sum_of_orders(1001, @sum_totals);
SELECT @sum_totals;

SELECT ROUND(@sum_totals / SUM(order_total) * 100, 2) AS Percentage_of_orders
FROM bakery.customer_orders;

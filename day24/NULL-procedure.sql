USE bakery;
DELIMITER $$
CREATE PROCEDURE orders_by_product(p_product_id INT)
BEGIN
    IF p_product_id IS NULL
    THEN SET p_product_id = 1001;
    END IF;
    SELECT *
    FROM bakery.customer_orders
    WHERE product_id = p_product_id;
END $$
DELIMITER ;
CALL orders_by_product(1003);
CALL orders_by_product(NULL);
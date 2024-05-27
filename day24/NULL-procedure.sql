USE bakery;
DELIMITER $$
DROP PROCEDURE IF EXISTS orders_by_product
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

DELIMITER $$
DROP PROCEDURE IF EXISTS orders_by_product2;
CREATE PROCEDURE orders_by_product2(p_product_id INT)
BEGIN
    IF p_product_id IS NULL
    THEN 
    SELECT *
    FROM bakery.customer_orders;
    ELSE
    SELECT *
    FROM bakery.customer_orders
    WHERE product_id = p_product_id;     
    END IF;
END $$
DELIMITER


DELIMITER $$
DROP PROCEDURE IF EXISTS orders_by_product3;
CREATE PROCEDURE orders_by_product3(p_product_id INT)
BEGIN
    SELECT *
    FROM bakery.customer_orders
    WHERE product_id = IFNULL(p_product_id, 1001);
END $$
DELIMITER

CALL orders_by_product3(1003);
CALL orders_by_product3(NULL);
USE bakery;

SHOW VARIABLES LIKE 'event$';

SET GLOBAL event_scheduler = 'ON';

SELECT *
FROM bakery.customer_orders
ORDER BY order_date;

DELIMITER $$
CREATE EVENT delete_old_customer_orders
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
    DELETE
    FROM bakery.customer_orders
    WHERE order_date < NOW() - INTERVAL 5 YEAR;
END $$
DELIMITER ;


DELIMITER $$
ALTER EVENT delete_old_customer_orders
ON SCHEDULE EVERY 30 DAY
DO
BEGIN
    DELETE
    FROM bakery.customer_orders
    WHERE order_date < NOW() - INTERVAL 5 YEAR;
END $$
DELIMITER ;

DROP EVENT IF EXISTS delete_old_customer_orders;
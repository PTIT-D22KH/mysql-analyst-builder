USE test;
-- DROP TABLE shopping_cart_test;
CREATE TABLE shopping_cart_test (
    customer_id TINYINT(1),
    carted_items TINYINT(1),
    purchased_items TINYINT(1)
);

INSERT INTO shopping_cart (customer_id, carted_items, purchased_items) VALUES
(1001, 45, 44),
(1002, 3, 3),
(1003, 17, 0),
(1004, 60, 49),
(1005, 33, 33),
(1006, 11, 10),
(1007, 1, 1);

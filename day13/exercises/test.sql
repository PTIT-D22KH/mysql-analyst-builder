USE bakery;
SELECT *
FROM customer_orders co
NATURAL JOIN ordered_items oi
;
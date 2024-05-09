USE day7;
SELECT *
FROM customers
WHERE purchased_items IN ('M&Ms', 'Snickers', 'Twizzlers')
;
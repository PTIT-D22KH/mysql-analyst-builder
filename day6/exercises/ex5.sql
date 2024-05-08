USE day6;
-- SELECT * FROM customers;
-- SELECT COUNT(*)
SELECT *
FROM customers
WHERE age > 65 OR total_purchase > 200
;
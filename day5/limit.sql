USE bakery;

-- SELECT * FROM customers
-- -- WHERE total_money_spent > 10000
-- ORDER BY total_money_spent DESC
-- LIMIT 5
-- ;


SELECT * FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 5, 2
--  meaning that start at the rows 5 and takes 2 rows -> from 5th to 7th
;
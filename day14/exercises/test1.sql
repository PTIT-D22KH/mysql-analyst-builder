USE bakery;
-- SELECT MAX(total_money_spent)
-- FROM customers
-- WHERE total_money_spent = (
--     SELECT total_money_spent
--     FROM customers
-- )
-- ;


-- SELECT total_money_spent
-- FROM customers
-- WHERE total_money_spent = (
--     SELECT MAX(total_money_spent)
--     FROM customers
-- )
-- ;


SELECT c.customer_id, (
    SELECT COUNT(*) FROM customer_orders co
    WHERE c. customer_id = co.customer_id
) AS customer_count 
FROM customers c;
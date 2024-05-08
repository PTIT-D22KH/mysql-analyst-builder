-- USE bakery;
-- SELECT * FROM customers
-- WHERE MAX(total_money_spent)
-- LIMIT 3;


-- SELECT DISTINCT state
-- FROM customers
-- ORDER BY state ;

-- SELECT state 
-- FROM customers
-- GROUP BY state 
-- ORDER BY state;



USE test;
SELECT *
FROM country
WHERE country IN ('Canada', 'France', 'Italy')
ORDER BY country;
-- USE test;
-- SELECT * FROM phone_numbers
-- WHERE numbers LIKE '701%';


USE bakery;
-- SELECT * FROM customers
-- WHERE LOWER(first_name) LIKE '%in%';


-- SELECT * FROM customers
-- WHERE first_name LIKE '%in%';

SELECT * FROM customers
WHERE LOWER(first_name) LIKE '%k%';
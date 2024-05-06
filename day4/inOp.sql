USE bakery;
-- SELECT * FROM customers
-- WHERE first_name IN ('Kevin', 'Charles');


-- SELECT * FROM customers
-- WHERE first_name IN ('kevin', 'charles');

-- SELECT * FROM customers
-- WHERE first_name IN ('KEVIN', 'CHARLES');

SELECT * FROM customers
WHERE first_name NOT IN ('Kevin', 'Charles');

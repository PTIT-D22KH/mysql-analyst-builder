USE bakery;
-- SELECT * FROM customers
-- WHERE first_name LIKE 'K%';


-- not case sensitive
-- SELECT * FROM customers
-- WHERE first_name LIKE 'k%';


-- SELECT * FROM customers
-- WHERE first_name LIKE '%y';


--  "_" is a wildcard for one character
--  "%" is a wildcard for zero, one or multiple characters

-- SELECT * FROM customers
-- WHERE first_name LIKE '%K%'; --any first_name has k or K in

-- SELECT * FROM customers
-- WHERE first_name LIKE '_o_';


-- SELECT * FROM customers
-- WHERE first_name LIKE '___kin';

-- SELECT * FROM customers
-- WHERE first_name LIKE '%kin';


SELECT * FROM customers
WHERE last_name LIKE 'S_____%';
USE bakery;
-- SELECT CAST('2022-01-01' AS DATETIME)



-- SELECT birth_date,
-- CAST(birth_date AS DATETIME),
-- CONVERT(birth_date, DATETIME)
-- FROM customers;


--  cannot convert!!!
SELECT first_name,
CAST(first_name AS DECIMAL)
FROM customers
;
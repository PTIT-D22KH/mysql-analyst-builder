USE bakery;

-- [-.^$*+?|]


-- [] : set of characters
-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP '[a-c]'
-- ;

-- SELECT *
-- FROM customers
-- WHERE total_money_spent REGEXP '[0-1]'
-- ;



-- literal character
-- SELECT *
-- FROM customers
-- WHERE total_money_spent REGEXP '0-1'
-- ;


-- . for any characters
-- SELECT *
-- FROM customers
-- WHERE phone REGEXP '.'
-- ;

-- SELECT *
-- FROM customers
-- WHERE phone REGEXP '6.'
-- ;

-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'k...n'
-- ;

--  ^: starts with
--  starts with k
-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP '^k'
-- ;


--  $: end with
-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'n$'
-- ;

-- * : zero or more occurance
-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'Obi.*'
-- ;

-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'Obi.'
-- ;

--  + : at least one occurances
-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'Obi.+'
-- ;


-- ? : zero or one occurance
-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'Obi.?'
-- ;

-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'K.?n'
-- ;

-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'K.+n'
-- ;


-- exactly {n} characters before
-- SELECT *
-- FROM customers
-- WHERE first_name REGEXP 'K.{3}n'
-- ;

-- a | b : a or b
SELECT *
FROM customers
WHERE first_name REGEXP 'kev|fro'
;

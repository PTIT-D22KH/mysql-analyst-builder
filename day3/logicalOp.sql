USE bakery;
-- SELECT *
-- FROM customers
-- WHERE state = 'PA' AND total_money_spent > 1000;


-- SELECT *
-- FROM customers
-- WHERE state = 'PA' OR total_money_spent > 1000;

-- SELECT *
-- FROM customers
-- WHERE (state = 'PA' OR city = 'New York') AND total_money_spent > 1000;


-- SELECT *
-- FROM customers
-- WHERE (state = 'PA' AND total_money_spent > 1000) OR birth_date > '1998-01-01';

-- SELECT *
-- FROM customers
-- WHERE state = 'PA' AND total_money_spent > 1000 OR birth_date > '1998-01-01';


-- wrong query result if not using paranthesis
-- SELECT *
-- FROM customers
-- WHERE state = 'PA' OR birth_date > '1998-01-01' AND total_money_spent > 1000 ;



USE bakery;
-- SELECT *
-- FROM customers
-- WHERE state = 'PA' AND total_money_spent > 1000;


-- SELECT *
-- FROM customers
-- WHERE state = 'PA' OR total_money_spent > 1000;

-- SELECT *
-- FROM customers
-- WHERE (state = 'PA' OR city = 'New York') AND total_money_spent > 1000;


-- SELECT *
-- FROM customers
-- WHERE (state = 'PA' AND total_money_spent > 1000) OR birth_date > '1998-01-01';

-- SELECT *
-- FROM customers
-- WHERE state = 'PA' AND total_money_spent > 1000 OR birth_date > '1998-01-01';


-- wrong query result if not using paranthesis
-- SELECT *
-- FROM customers
-- WHERE NOT state = 'PA' ; -- or state != "PA";


USE bakery;
-- SELECT *
-- FROM customers
-- WHERE state = 'PA' AND total_money_spent > 1000;


-- SELECT *
-- FROM customers
-- WHERE state = 'PA' OR total_money_spent > 1000;

-- SELECT *
-- FROM customers
-- WHERE (state = 'PA' OR city = 'New York') AND total_money_spent > 1000;


-- SELECT *
-- FROM customers
-- WHERE (state = 'PA' AND total_money_spent > 1000) OR birth_date > '1998-01-01';

-- SELECT *
-- FROM customers
-- WHERE state = 'PA' AND total_money_spent > 1000 OR birth_date > '1998-01-01';



-- SELECT *
-- FROM customers
-- WHERE NOT total_money_spent > 1000 ;


-- NOT is only affect the first condition

-- SELECT *
-- FROM customers
-- WHERE NOT total_money_spent > 1000 AND state = 'TX';

SELECT *
FROM customers
WHERE NOT (total_money_spent > 1000 AND state = 'TX');
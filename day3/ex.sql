USE bakery;
-- SELECT first_name FROM customers
-- WHERE first_name IN ('Kevin', 'Charles');


-- USE bakery;
-- SELECT first_name FROM customers
-- WHERE first_name = 'Kevin' OR first_name = 'Charles';


-- SELECT * FROM customers
-- WHERE total_money_spent BETWEEN 534 AND 947;

-- SELECT * FROM customers
-- WHERE (state = "PA");

-- SELECT * FROM customers
-- WHERE total_money_spent > 900 AND (birth_date < '1966-01-01' OR state = "PA");


-- SELECT * FROM customers
-- WHERE birth_date > '1989-04-28' AND birth_date < '1999-02-08';


-- SELECT * FROM customers

-- WHERE birth_date BETWEEN '1989-04-28' AND  '1999-02-07';

SELECT * FROM customers
WHERE last_name LIKE 'M%' AND first_name NOT LIKE 'C%' ;

-- SELECT * FROM customers
-- WHERE last_name = 'M%' OR first_name != 'C%' ;


-- SELECT * FROM customers
-- WHERE last_name = 'M%' AND first_name = 'C%' ;


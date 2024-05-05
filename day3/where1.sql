USE bakery;
SELECT * 
FROM customers
WHERE total_money_spent > 3000;


SELECT * 
FROM customers
WHERE city = 'Scranton';


SELECT * 
FROM customers
WHERE birth_date > '1985-01-01';
-- WHERE birth_date > '1985'; error

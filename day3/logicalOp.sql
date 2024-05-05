USE bakery;
SELECT *
FROM customers
WHERE state = 'PA' AND total_money_spent > 1000;
USE day8;
SELECT *, YEAR(birth_date) AS birth_year
FROM employees
ORDER BY birth_date ASC;
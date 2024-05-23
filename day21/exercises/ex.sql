USE day21;
SELECT *
FROM employee_raise;


WITH cte_employee AS(
    SELECT *, salary * 1.15 as new_salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary) as row_num
    FROM employee_raise
) SELECT *
FROM cte_employee
WHERE row_num = 1;
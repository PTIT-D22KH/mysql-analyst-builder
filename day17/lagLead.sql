USE bakery;
-- SELECT *,
-- (
--     LAG(salary) OVER()
-- )
-- FROM employees
-- ;

SELECT *, IF (salary > lag_col, 'More', 'Less')
FROM 
    (
        SELECT *,
        LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) AS lag_col
        FROM employees
    ) AS lag_table
;
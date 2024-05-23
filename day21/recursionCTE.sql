USE bakery;
SELECT *
FROM bakery.employees;

WITH RECURSIVE cte_example AS
(
    SELECT 1 AS x
    UNION ALL
    SELECT x + 1
    FROM cte_example
    WHERE x < 10
)
SELECT x 
FROM cte_example;

WITH RECURSIVE company_hierachy AS(
    SELECT employee_id, first_name, last_name, boss_id,
    0 as hierachy_level
    FROM employees
    WHERE boss_id IS NULL
    UNION ALL
    SELECT e.employee_id, e.first_name, e.last_name, e.boss_id, hierachy_level + 1
    FROM employees e, company_hierachy ch
    WHERE e.boss_id = ch.employee_id
) 
SELECT *
FROM company_hierachy;
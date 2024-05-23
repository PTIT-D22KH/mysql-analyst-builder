USE day21;
SELECT *
FROM employee_hierarchy;

WITH RECURSIVE company_hierarchy AS (
    SELECT employee_id, supervisor_id, 1 as hierarchy_level
    FROM employee_hierarchy
    WHERE supervisor_id IS NULL
    UNION ALL
    SELECT eh.employee_id, eh.supervisor_id, ch.hierarchy_level + 1
    FROM employee_hierarchy eh
    JOIN company_hierarchy ch ON eh.supervisor_id = ch.employee_id
)
SELECT *
FROM company_hierarchy;

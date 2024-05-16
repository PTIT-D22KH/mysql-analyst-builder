USE day14;
SELECT e.employee_id, e.name
FROM employee e
WHERE employee_id NOT IN (
    SELECT b.emp_id 
    FROM bonus b
)
ORDER BY employee_id DESC
;
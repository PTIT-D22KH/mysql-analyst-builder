USE hard;

SELECT *
FROM hard.employee_salary;

SELECT e.first_name, e.last_name, e.department, e.salary, d.avg_sal_department
FROM hard.employee_salary e 
JOIN (
    SELECT 
        department, 
        AVG(salary) AS avg_sal_department
    FROM 
        hard.employee_salary
    GROUP BY department
) d ON e.department = d.department
ORDER BY e.department DESC, e.salary DESC;
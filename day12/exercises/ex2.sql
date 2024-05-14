USE day12;
SELECT first_name, last_name, state
FROM employee_name en 
LEFT JOIN employee_location el 
    ON en.person_id = el.employee_id
ORDER BY first_name;
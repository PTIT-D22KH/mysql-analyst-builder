USE day12;
SELECT * 
FROM boss b
LEFT JOIN boss e 
    ON b.boss_id = e.employee_id
ORDER BY b.employee_name;
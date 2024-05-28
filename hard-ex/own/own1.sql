USE hard;
SELECT 
    t1.date
FROM 
    temperatures t1
JOIN temperatures t2 ON t1.date = DATE_SUB(t2.date, INTERVAL 1 DAY)
WHERE 
    t1.temperature > t2.temperature
ORDER BY t1.date ASC;
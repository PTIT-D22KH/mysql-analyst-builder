USE day12;
SELECT *
FROM bread_table br 
CROSS JOIN meat_table m
ORDER BY br.bread_name , m.meat_name;
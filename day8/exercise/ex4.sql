USE day8;
SELECT * 
FROM inspections
WHERE NOT(critical_issues > 0 OR minor_issues > 3)
ORDER BY owner_name 
;
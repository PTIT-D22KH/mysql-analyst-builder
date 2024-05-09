USE day7;
SELECT *

FROM Country
WHERE 
square_kilometers >= 3*1e6
OR population >= 1e8
ORDER BY country
;
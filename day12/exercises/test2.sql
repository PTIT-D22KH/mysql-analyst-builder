USE day12;
-- SELECT *
-- FROM A 
-- LEFT JOIN B 
--     ON A.id = B.id
--     AND B.value IS NOT NULL;

-- SELECT *
-- FROM A 
-- LEFT JOIN B 
--     ON A.id = B.id
-- WHERE B.value IS NOT NULL;

SELECT *
FROM A 
LEFT JOIN B 
WHERE A.id = B.id
AND B.value IS NOT NULL;
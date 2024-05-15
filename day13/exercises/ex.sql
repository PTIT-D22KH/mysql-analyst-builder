USE day13;
SELECT DISTINCT * 
FROM animals_main
UNION
SELECT DISTINCT *
FROM animals_secondary
ORDER BY animal;
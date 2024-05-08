USE day6;
-- SELECT * FROM patient;

SELECT *
FROM patient
WHERE age > 50 AND cholesterol >= 240 AND weight >= 200
ORDER BY cholesterol DESC;

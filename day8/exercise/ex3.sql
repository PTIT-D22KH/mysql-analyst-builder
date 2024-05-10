USE day8;
-- SELECT *,
-- ROUND(((weight_pounds) / (height_inches * height_inches) * 703), 1) AS bmi_score
-- FROM patients

-- ;

-- SELECT *,
-- ROUND(((weight_pounds) / (height_inches * height_inches) * 703), 1) AS bmi_score,
-- CASE 
--     WHEN ROUND(((weight_pounds) / (height_inches * height_inches) * 703), 1) >= 30 THEN 'obese'
--     ELSE 'normal'
-- END as health_status
-- FROM patients
-- WHERE ROUND(((weight_pounds) / (height_inches * height_inches) * 703), 1) >= 30
-- ;

SELECT *,
ROUND(((weight_pounds) / (height_inches * height_inches) * 703), 1) AS bmi_score
FROM patients
WHERE ROUND(((weight_pounds) / (height_inches * height_inches) * 703), 1) >= 30
;
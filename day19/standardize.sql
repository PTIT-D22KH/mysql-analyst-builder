USE bakery;
-- SELECT phone, REGEXP_REPLACE(phone, '[()-/+]', '')
-- FROM customer_sweepstakes
-- ;

-- UPDATE customer_sweepstakes
-- SET phone  = REGEXP_REPLACE(phone, '[()-/+]', '')
-- ;


-- SELECT phone, SUBSTRING(phone, 1,3) , SUBSTRING(phone, 4, 3), SUBSTRING(phone, 7, 4)
-- FROM customer_sweepstakes
-- ;

-- SELECT phone, CONCAT(SUBSTRING(phone, 1,3) ,'-', SUBSTRING(phone, 4, 3), '-', SUBSTRING(phone, 7, 4))
-- FROM customer_sweepstakes
-- WHERE phone != ''
-- ;


-- UPDATE customer_sweepstakes
-- SET phone = CONCAT(SUBSTRING(phone, 1,3) ,'-', SUBSTRING(phone, 4, 3), '-', SUBSTRING(phone, 7, 4))
-- WHERE phone != ''
-- ;

-- SELECT phone
-- FROM customer_sweepstakes;


-- SELECT birth_date,
-- IF(STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL, STR_TO_DATE(birth_date, '%m/%d/%Y'), 
-- STR_TO_DATE(birth_date, '%Y/%d/%m')),
-- STR_TO_DATE(birth_date, '%m/%d/%Y'),
-- STR_TO_DATE(birth_date, '%Y/%d/%m')
-- FROM customer_sweepstakes;

-- UPDATE customer_sweepstakes
-- SET birth_date = IF(STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL, STR_TO_DATE(birth_date, '%m/%d/%Y'), 
-- STR_TO_DATE(birth_date, '%Y/%d/%m'))



-- real
-- UPDATE customer_sweepstakes
-- SET birth_date = CASE 
--     WHEN STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL THEN  STR_TO_DATE(birth_date, '%m/%d/%Y')
--     ELSE STR_TO_DATE(birth_date, '%Y/%d/%m'))
-- END

-- SELECT `Are_you_over_18`,
-- CASE 
--     WHEN `Are_you_over_18` = 'Yes' THEN 'Y'
--     WHEN `Are_you_over_18` = 'No' THEN 'N'
--     ELSE  `Are_you_over_18`
-- END
-- FROM bakery.customer_sweepstakes;

-- UPDATE bakery.customer_sweepstakes
-- SET `Are_you_over_18`=
-- CASE 
--     WHEN `Are_you_over_18` = 'Yes' THEN 'Y'
--     WHEN `Are_you_over_18` = 'No' THEN 'N'
--     ELSE  `Are_you_over_18`
-- END

SELECT *
FROM bakery.customer_sweepstakes
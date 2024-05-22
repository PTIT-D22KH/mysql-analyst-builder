USE bakery;

SELECT *
FROM bakery.customer_sweepstakes;

-- UPDATE customer_sweepstakes
-- SET phone = NULL
-- WHERE phone = ''
-- ;

-- UPDATE customer_sweepstakes
-- SET income = NULL
-- WHERE income = ''
-- ;

-- SELECT AVG(COALESCE(income, 0))
-- FROM bakery.customer_sweepstakes
-- ;

SELECT birth_date, `Are_you_over_18`
FROM bakery.customer_sweepstakes
-- WHERE (YEAR(NOW()) - 18) <= YEAR(birth_date)
;

-- UPDATE bakery.customer_sweepstakes
-- SET `Are_you_over_18` = 'N'
-- WHERE (YEAR(NOW()) - 18) <= YEAR(birth_date)
-- ;

-- UPDATE bakery.customer_sweepstakes
-- SET `Are_you_over_18` = 'Y'
-- WHERE (YEAR(NOW()) - 18) > YEAR(birth_date)
-- ;


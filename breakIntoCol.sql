USE bakery;

-- SELECT address, SUBSTRING_INDEX(address, ',', 1), SUBSTRING_INDEX(address, ',', -1)
-- FROM bakery.customer_sweepstakes
-- ;

SELECT address, 
SUBSTRING_INDEX(address, ',', 1) AS Street, 
SUBSTRING_INDEX(SUBSTRING_INDEX(address, ',', 2), ',', -1) AS City,
SUBSTRING_INDEX(address, ',', -1) AS State
FROM bakery.customer_sweepstakes
;

-- ALTER Table bakery.customer_sweepstakes
-- ADD COLUMN street VARCHAR(50) AFTER address,
-- ADD COLUMN city VARCHAR(50) AFTER street,
-- ADD COLUMN state VARCHAR(50) AFTER city
-- ;


-- UPDATE bakery.customer_sweepstakes
-- SET street = SUBSTRING_INDEX(address, ',', 1)
-- ;
-- UPDATE bakery.customer_sweepstakes
-- SET city = SUBSTRING_INDEX(SUBSTRING_INDEX(address, ',', 2), ',', -1)
-- ;
-- UPDATE bakery.customer_sweepstakes
-- SET state = SUBSTRING_INDEX(address, ',', -1)
-- ;

SELECT *
FROM bakery.customer_sweepstakes
;

-- UPDATE bakery.customer_sweepstakes
-- SET state = upper(state)
-- ;

-- UPDATE bakery.customer_sweepstakes
-- SET city = TRIM(city)
-- ;

-- UPDATE bakery.customer_sweepstakes
-- SET state = TRIM(state)
-- ;
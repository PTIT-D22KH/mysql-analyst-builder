USE bakery;
-- SELECT * FROM customers;


-- SELECT LENGTH('sky');

-- SELECT first_name, LENGTH(first_name) AS first_name_len
-- FROM customers
-- ORDER BY first_name_len
-- ;

-- SELECT first_name, UPPER(first_name), LOWER(first_name)
-- FROM customers

-- ;


-- SELECT ' I         love     SQL   ', TRIM(' I         love     SQL   '), LTRIM(' I         love     SQL   '), RTRIM(' I         love     SQL   ');

-- SELECT LEFT('Alexander', 4);

-- SELECT first_name, LEFT(first_name, 3), RIGHT(first_name, 3)
-- FROM customers
-- ;

-- SELECT SUBSTRING('Alexander', 2, 3)

-- SELECT phone, SUBSTRING(phone, 1, 3), SUBSTRING(phone, 5, 3), SUBSTRING(phone, 9, 4)
-- FROM customers
-- ;


-- SELECT REPLACE (first_name, 'a', 'z')
-- FROM customers
-- ;

-- SELECT REPLACE (phone, '-', '')
-- FROM customers
-- ;

-- SELECT LOCATE('x', 'Alexander');

-- SELECT first_name, LOCATE('ic', first_name)
-- FROM customers
-- ;

-- SELECT CONCAT('Alex', ' Freberg')


SELECT 
    phone, 
    SUBSTRING(phone, 1, 3) AS s1, 
    SUBSTRING(phone, 5, 3) AS s2, 
    SUBSTRING(phone, 9, 4) AS s3, 
    CONCAT(SUBSTRING(phone, 1, 3), SUBSTRING(phone, 5, 3), SUBSTRING(phone, 9, 4)) AS concatenated_phone
FROM customers;

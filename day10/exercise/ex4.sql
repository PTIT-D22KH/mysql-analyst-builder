USE day10;

SELECT *, LOWER(email) as lower_email
FROM emails
-- SELECT COUNT(LOWER(email)) AS total, COUNT(DISTINCT LOWER(email)) AS not_duplicated_email
-- FROM emails;
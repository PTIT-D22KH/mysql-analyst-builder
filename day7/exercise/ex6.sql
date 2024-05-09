USE day7;
SELECT first_name, last_name,
CONCAT(SUBSTRING(first_name, 1,3), YEAR(birth_date)) AS gamer_tag
FROM gamer_tags
ORDER BY gamer_tag
;
USE hard;

SELECT p.first_name, p.last_name, IFNULL(c.email, CONCAT(LOWER(p.first_name), CONCAT(".", CONCAT(LOWER(p.last_name), "@gmail.com")))) AS email
FROM hard.`People` as p
JOIN hard.`Contacts` as c
ON p.id = c.id
ORDER BY email 
;
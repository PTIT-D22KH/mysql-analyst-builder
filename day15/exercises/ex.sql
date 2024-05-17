USE day15;
SELECT first_name, media_time_minutes, 
    (
        SELECT AVG(ut.media_time_minutes)
        FROM user_time ut
    ) AS average_time
FROM users u
JOIN user_time ut
    ON u.user_id = ut.user_id
WHERE ut.media_time_minutes > (
    SELECT AVG(ut.media_time_minutes)
    FROM user_time ut
)
ORDER by first_name
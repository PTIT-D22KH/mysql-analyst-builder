USE day9;
SELECT user_id, activity, AVG(minutes_per_session) as average_time
FROM sessions
WHERE activity = 'Gaming'
GROUP BY user_id, activity
ORDER BY average_time DESC
;
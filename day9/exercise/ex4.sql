USE day9;

SELECT device_id, MIN(date_played) AS first_played
FROM devices
WHERE game = 'League of Legends'
GROUP BY device_id
ORDER BY first_played;

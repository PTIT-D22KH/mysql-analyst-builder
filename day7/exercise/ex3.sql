USE day7;
SELECT *, (thumbs_up / (thumbs_down + thumbs_up) * 100) AS like_percentage
FROM youtube_videos
WHERE (thumbs_up / (thumbs_down + thumbs_up) * 100) < 55
ORDER BY video_id
;
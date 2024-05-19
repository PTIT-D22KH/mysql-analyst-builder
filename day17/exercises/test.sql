USE day17;
-- SELECT artist_id,
--     SUM(score),
--     RANK() OVER(PARTITION BY SUM(score) ORDER BY SUM(score) DESC)
-- FROM rankings
-- GROUP BY artist_id
-- ORDER BY artist_id;


-- WITH artist_scores AS (
--     SELECT artist_id, SUM(score) AS total_score
--     FROM rankings
--     GROUP BY artist_id
-- ),
-- ranked_artists AS (
--     SELECT artist_id, total_score,
--            RANK() OVER (ORDER BY total_score DESC) AS artist_rank
--     FROM artist_scores
-- )
-- SELECT artist_id, total_score, artist_rank
-- FROM ranked_artists
-- ORDER BY artist_rank, artist_id;


SELECT artist_id, total_score,
    RANK() OVER (ORDER BY total_score DESC) AS artist_rank
FROM (
    SELECT artist_id, SUM(score) AS total_score
    FROM rankings
    GROUP BY artist_id
) AS artist_scores
ORDER BY artist_rank, artist_id;
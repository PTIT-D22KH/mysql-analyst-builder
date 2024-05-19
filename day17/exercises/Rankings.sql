CREATE DATABASE IF NOT EXISTS day17;
USE day17;
CREATE TABLE rankings (
    artist_id INT,
    judge_id INT,
    score INT
);

INSERT INTO rankings (artist_id, judge_id, score) VALUES
(1, 1001, 4),
(2, 1001, 6),
(3, 1001, 4),
(4, 1001, 10),
(5, 1001, 7),
(1, 1002, 4),
(2, 1002, 6),
(3, 1002, 7),
(4, 1002, 5),
(5, 1002, 10),
(1, 1003, 7),
(2, 1003, 5),
(3, 1003, 4),
(4, 1003, 8),
(5, 1003, 6);

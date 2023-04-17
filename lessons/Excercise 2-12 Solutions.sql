-- Excercise 2 --
-- Select only the names of all the bands --
SELECT band_name AS 'Band Name' FROM bands;

-- Excercise 3 --
-- Select the oldest album --
SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year ASC
LIMIT 1;

-- Excercise 4 --
-- Get all the bands that have albums --
-- For bands with unique names --
SELECT DISTINCT b.id AS 'Band ID', b.band_name AS 'Band Name'
FROM bands as b
JOIN albums as a ON b.id = a.band_id;

-- For bands without unique names --
SELECT b.band_name AS 'Band Name'
FROM bands as b
JOIN albums as a ON b.id = a.band_id
GROUP BY a.band_id
HAVING COUNT(a.id) > 0;

-- Excercise 5 --
-- Get all bands that have no albums --
SELECT count(b.id) AS 'Band ID', b.band_name AS 'Band Name'
FROM bands as b
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id
HAVING count(a.band_id) = 0;

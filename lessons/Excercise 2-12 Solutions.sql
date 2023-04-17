-- Excercise 2 --
-- Select only the names of all the bands --
SELECT band_name AS 'Band Name' FROM bands;

-- Excercise 3 --
-- Select the oldest album --
SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year ASC
LIMIT 1;
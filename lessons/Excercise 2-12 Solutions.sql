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

-- Excercise 6 --
-- Get the longest album --
SELECT a.album_name AS 'Album Name', a.release_year AS 'Release Year', SUM(s.length) AS 'Album_Duration' 
	FROM albums AS a
	JOIN songs AS s on a.id = s.album_id
	GROUP BY a.id
	ORDER BY Album_Duration DESC
	LIMIT 1;

-- Excercise 7 --
-- Update the Release Year of the Album with no Release Year --
-- To first get the id --
SELECT * FROM albums WHERE albums.release_year IS NULL;

-- Then update --
UPDATE albums 
	SET albums.release_year = 1986
	WHERE albums.id = 4;

-- Excercise 8 --
-- Insert a record of my favourite band --
INSERT INTO bands (bands.band_name) VALUES ('Chain Smokers');
SELECT * FROM bands;

-- Insert a record of chain smokers' album --
INSERT INTO albums (album_name, release_year, band_id)
	VALUES ('Memories...Do Not Open', 2017, 8);
SELECT * FROM albums;

-- Excercise 9 --
-- Delete the created band and album --
-- NB: DELETE album first because of FOREIGN KEY--
DELETE FROM albums 
	WHERE albums.id = 19;
SELECT * FROM albums;

-- Then delete band --
DELETE FROM bands 
	WHERE bands.id = 8;
SELECT * FROM bands;


-- Excercise 10 --
-- Get the Average Length of all Songs --
SELECT AVG(s.length)
	FROM songs AS s;
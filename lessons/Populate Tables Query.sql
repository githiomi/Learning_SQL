-- Populate the bands table --
INSERT INTO bands(id,band_name) VALUES (1,'Seventh Wonder');
INSERT INTO bands(id,band_name) VALUES (2,'Metallica');
INSERT INTO bands(id,band_name) VALUES (3,'The Ocean');
INSERT INTO bands(id,band_name) VALUES (4,'Within Temptation');
INSERT INTO bands(id,band_name) VALUES (5,'Death');
INSERT INTO bands(id,band_name) VALUES (6,'Van Canto');
INSERT INTO bands(id,band_name) VALUES (7,'Dream Theater');

-- View data in bands table --
SELECT * FROM bands LIMIT 7;

-- Populate the albums table --
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (1,'Tiara',2018,1);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (2,'The Great Escape',2010,1);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (3,'Mercy Falls',2008,1);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (4,'Master of Puppets',NULL,2);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (5,'...And Justice for All',1988,2);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (6,'Death Magnetic',2008,2);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (7,'Heliocentric',2010,3);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (8,'Pelagial',2013,3);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (9,'Anthropocentric',2010,3);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (10,'Resist',2018,4);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (11,'The Unforgiving',2011,4);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (12,'Enter',1997,4);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (13,'The Sound of Perseverance',1998,5);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (14,'Individual Thought Patterns',1993,5);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (15,'Human',1991,5);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (16,'A Storm to Come',2006,6);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (17,'Break the Silence',2011,6);
INSERT INTO albums(id,album_name,release_year,band_id) VALUES (18,'Tribe of Force',2010,6);

-- View data in albums table --
SELECT * FROM albums LIMIT 10;
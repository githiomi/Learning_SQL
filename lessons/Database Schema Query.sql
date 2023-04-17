CREATE DATABASE records_company_database;

-- Specify the DB to be used in queries --
USE records_company_database;

-- Create the required tables --
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT,
    band_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE albums (
	id INT AUTO_INCREMENT NOT NULL,
    album_name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
	CONSTRAINT FK_BandID FOREIGN KEY (band_id) REFERENCES bands(id)
);
-- Select DB to use --
USE records_company_database;

-- Create a songs table --
CREATE TABLE songs (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length FLOAT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT FK_album_id FOREIGN KEY (album_id) REFERENCES albums (id)
);

-- Populate the songs table --
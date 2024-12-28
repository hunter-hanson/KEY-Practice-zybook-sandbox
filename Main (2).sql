-- Drop Album and Song tables if created in prior run
DROP TABLE IF EXISTS Album, Song;

-- Add a primary key
CREATE TABLE Album (
  ID INT,
  Title VARCHAR(60),
  ReleaseYear INT,
  PRIMARY KEY(ID)
);

-- Add primary and foreign keys
CREATE TABLE Song (
  ID INT,
  Title VARCHAR(60),
  Artist VARCHAR(60),
  AlbumID INT,
PRIMARY KEY (ID),
FOREIGN KEY (AlbumID) REFERENCES Album(ID)
);

-- Show Album and Song column information
SHOW COLUMNS
FROM Album;

SHOW COLUMNS
FROM Song;
CREATE DATABASE record_company;
USE record_company;

CREATE TABLE bands (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE albums (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  release_year INT,
  band_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (band_id) REFERENCES bands(id)
);

-- Create a songs table
CREATE TABLE songs(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL, -- in sql VARCHAR represents a string data type
  length float NOT NULL,
   album_id INT NOT NULL,
   primary key(id),
    FOREIGN KEY (album_id) REFERENCES albums(id) -- to have a relationship between the albums table and songs table
);

-- Select only the names of all the bands
-- Change the name of the column to Band Name that returns the data about the bands names
-- with AS keyword to change the name of the column
SELECT name AS 'Band Name' FROM bands;

-- Select the oldest album from the albums table
-- there is multiple ways of searching in the table the oldest album
-- first way:
SELECT * FROM albums WHERE id = 5 limit 1;
-- second way : 
SELECT * FROM albums WHERE release_year = 1988 limit 1;
-- * the most correct way *:
-- first select all columns from the albums table where the year cannot be null and finnaly order or sort by year the rows of the table by asc(default value) and with limit 1 to return only the first row or one row!!
SELECT * FROM albums WHERE release_year IS NOT NULL ORDER BY release_year ASC LIMIT 1 ;

-- Get all Bands that have Albums
-- For this we use INNER JOIN to return all the records with no null values
SELECT DISTINCT bands.name AS "Band Name" FROM bands INNER JOIN albums ON bands.id = albums.band_id;

-- Get all Bands that don´t have any Album
-- For this we use LEFT JOIN since could have null values in the right side of the table
SELECT  bands.name AS "Band Name" FROM bands LEFT JOIN albums ON bands.id = albums.band_id
-- GROUP BY TO to determine who haves and who doesn´t have any album with count aggre function
-- *IF WE GROUP ALL THE ALBUMS BY BAND ID WE WANT TO FIND ALL THE GROUPS/BANDS THAT DONT HAVE ANY ALBUMS*
-- WILL RETURN THE BAND THAT DOESN´T HAVE AN ASSIGN ALBUM !!
GROUP BY albums.band_id HAVING COUNT(albums.id) = 0;

-- Get the longest album
SELECT albums.name AS 'Name', albums.release_year AS 'Release Year',
-- SUM ALL VALUES FROM THE COLUMN length AS Duration
 ROUND(SUM(songs.length)) AS 'Duration' FROM albums JOIN SONGS ON albums.id = songs.album_id
-- for each album 
GROUP BY songs.album_id ORDER BY Duration DESC LIMIT 1;

-- Get the shortest album
SELECT albums.name AS 'Name', albums.release_year AS 'Release Year',
-- SUM ALL VALUES FROM THE COLUMN length AS Duration
SUM(songs.length) AS 'Duration' FROM albums JOIN SONGS ON albums.id = songs.album_id
GROUP BY songs.album_id ORDER BY Duration ASC;

--  Update the Release Year of the Album with no Release Year
-- first see what record have null value in release year => for search the id with the album without release year
SELECT * FROM albums WHERE release_year IS NULL;
-- then update is release year by filtering is ID, since you 
-- can only filter a Primary Key from the a parent table
UPDATE albums SET release_year = 1986 WHERE id = 4; -- !! IF YOU FILTER WHERE IS NULL WILL GAVE AN ERROR BECAUSE YOU CAN ONLY FILTER A PRIMARY KEY LIKE MENTION BEFORE WHEN UPDATING IT A TABLE
SELECT * FROM albums WHERE release_year = 1986;

-- Insert a record for your favorite Band and one of their albums
INSERT INTO bands(name) VALUES('Linkin Park');

-- TO CHECK IF WAS ADDED IN THE BANDS TABLE OUR FAVORITE BAND
SELECT * FROM bands WHERE name = 'Linkin Park' LIMIT 1;

-- AND NOW WE INSERT ONE OF THEIR ALBUMS IN THE ALBUMS TABLE
INSERT INTO albums(name, release_year, band_id) 
VALUES('The Hunting Party',2014,8);

-- RETURN THE RECORD WITH THE BAND NAME AND HIS ALBUM IN ON SINGLE ROW
-- GET THE RECENT BAND ADDED WITH HIS ALBUM IN A SINGLE ROW :

-- NOW LET´S JOIN THE BANDS AND ALUBMS TABLE TO GET IN ONE
-- SINGLE RECORD THE BAND WITH THE ALBUM WE INSERT IN
-- GET THE RECENT BAND AND ALBUM WITH JOIN , GROUP BY AND ORDER BY STATMENT
-- GET THE RECENT BAND ADDED IN THE DATABASE WITH THE ALBUM IN ONE SINGLE RECORD OR ROW
SELECT * FROM bands JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id ORDER BY band_id DESC LIMIT 1; -- with group by and order by we are sorting the band_id key or column by his id in desc and with limit 1 we get only the recent record 'Linkin Park' with his album and release year keys;

-- DELETE THE PREVIOUS RECORD ADDED 
-- Delete the Band and Album added previous
-- delete album first => child table with foreign key
DELETE FROM albums WHERE id = 19;

-- delete the band => parent table with primary key
DELETE FROM bands WHERE id = 8;

-- now we can check that record previous added no longer exists in the database !!
SELECT * FROM bands;
SELECT * FROM albums;
SELECT * FROM bands JOIN albums ON bands.id = albums.band_id;

-- Get the average length/duration of all songs
-- we select the length key with average agregat function, to calculate the average of that key 
SELECT AVG(length) AS 'Average Song Duration' FROM songs; -- with average function will agregate all values from that key and calculate his average 
-- returning his average value by rounding it, without returning a floating number
SELECT round(AVG(length)) AS 'Average Song Duration' FROM songs;

SELECT * FROM albums;
SELECT * FROM songs;
-- Select the longest song off each album
SELECT albums.name AS 'Album', albums.release_year AS 'Release Year',
MAX(songs.length) AS 'Duration' FROM albums JOIN songs ON albums.id = songs.album_id
-- To return for each album 
GROUP BY songs.album_id;

SELECT * FROM bands;
SELECT * FROM albums;
SELECT * FROM songs;

-- Get the number of songs for each band
								-- count songs 
SELECT bands.name AS 'Band', COUNT(songs.id) AS 'Number of Songs' FROM bands
-- joining the albums for each respective band
JOIN albums ON bands.id = albums.band_id
-- joining the songs for each album respective for each band
JOIN songs ON albums.id = songs.album_id 
-- for each band will return the number of songs of each band
GROUP BY albums.band_id;
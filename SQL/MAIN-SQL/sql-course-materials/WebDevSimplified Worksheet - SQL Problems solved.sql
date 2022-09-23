-- 2. Select only the Names of all the Bands
SELECT name AS 'Band Name' FROM bands;

-- 3. Select the Oldest Album
SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

-- 4. Get all Bands that have Albums
SELECT DISTINCT bands.name AS 'Band Name' -- always prefix the table when selecting a key e
FROM bands
JOIN albums ON albums.band_id = bands.id; --  join to return all the records with no null album id

-- 5. Get all Bands that have No Albums
SELECT bands.name AS 'Band Name'
FROM bands
-- join the foreign key(child table) with the primary key(parent table)
LEFT JOIN albums ON albums.band_id = bands.id -- LEFT JOIN OUTER JOIN TO RETURN THE NULL RECORD
GROUP BY albums.band_id HAVING COUNT(albums.id) = 0;

-- 6. Get the Longest Album
SELECT a.name AS 'Album_name', a.release_year AS 'Release Year', SUM(s.length) AS 'Duration'
FROM albums AS a
-- connect the child key with his parent key - relationship between tables
INNER JOIN songs AS s ON s.album_id = a.id
GROUP BY Album_name
ORDER BY Duration DESC LIMIT 1;


-- 7. Update the Release Year of the Album with no Release Year
-- Set the release year to 1986.
	UPDATE albums
    SET release_year = 1986
    WHERE release_year IS NULL;
-- ----------------------------------------------------------------------------------
-- 8. Insert a record/row for your favorite Band and one of their Albums
-- add favourite band
INSERT INTO bands(name)
VALUES('Coldplay');

-- add one of their albums
INSERT INTO albums(name,release_year,band_id)
VALUES('Every Day Life',2019,8);
-- ------------------------------------------------------------------------------------
-- 9. Delete the Band and Album you added in #8
-- deletes the band
DELETE FROM bands
WHERE id = 8;

-- delete the album
DELETE FROM albums
WHERE id = 19;
-- ------------------------------------------------------------------------------------
-- 10. Get the Average Length of all Songs
SELECT AVG(songs.length) AS 'Average Song Duration'
FROM songs;

-- 11. Select the longest Song off each Album
 SELECT a.name AS Album, a.release_year AS 'Release Year', MAX(s.length) AS Duration
 FROM albums AS a
 INNER JOIN songs AS s ON s.album_id = a.id
 -- to return for each album the longest duration song with the MAX function
 GROUP BY Album;
 
  -- 12 . Get the number of Songs for each Band
 SELECT b.name AS Band, COUNT(s.id) AS 'Number of Songs'
 FROM bands AS b
 INNER JOIN albums ON albums.band_id = b.id
 INNER JOIN songs AS s ON s.album_id = albums.id
 GROUP BY Band;
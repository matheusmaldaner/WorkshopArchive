-- Select all records from the 'Album' table
SELECT * FROM Album;
-- Select specific columns from the 'Artist' table
SELECT ArtistId, Name FROM Artist;
-- Join 'Album' and 'Artist' tables on the 'ArtistId' 
column
SELECT Album.Title, Artist.Name FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId;
-- Filter records using the WHERE clause
SELECT * FROM Customer WHERE Country = 'Canada';
-- Sort records using the ORDER BY clause
SELECT * FROM Employee ORDER BY LastName;
-- Count the number of records in the 'Invoice' table
SELECT COUNT(*) FROM Invoice;
-- Calculate the average total in the 'Invoice' table
SELECT AVG(Total) FROM Invoice;
-- Group records and apply aggregate functions
SELECT Country, COUNT(*) FROM Customer GROUP BY Country
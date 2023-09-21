-- Select all records from the 'albums' table
-- Hint: In SQL, the * symbol denotes "all". Use this symbol to retrieve all columns from the 'albums' table.
SELECT ___ FROM ___;

-- Select specific columns from the 'artists' table
-- Hint: To select specific columns, list their names after the SELECT keyword. 
--  Refer to the "Database Structure" to see available columns in the 'artists' table.
SELECT ___, ___ FROM ___;

-- Filter records from the 'customers' table where the country is 'Canada'
-- Hint: Use the WHERE clause to filter records based on a specific condition. 
--	In this case, you want to retrieve records where the 'Country' column has the value 'Canada'.
SELECT ___ FROM ___ WHERE ___ = '___';

-- Join the 'albums' and 'artists' tables on the 'ArtistId' column
-- Hint: When joining tables, specify the columns that should match in both tables. 
--  Here, you're joining on the 'ArtistId' column.
SELECT ___.___, ___.___ 
FROM ___
JOIN ___ ON ___.___ = ___.___;

-- Sort records from the 'albums' table by the 'Title' column in ascending order
-- Hint: Use the ORDER BY clause to sort records. By default, records are sorted in ascending order. 
--  If you want descending order, add the DESC keyword.
SELECT ___ FROM ___ ORDER BY ___;

-- Count the total number of records in the 'invoices' table
-- Hint: The COUNT() function returns the number of rows in a table. 
--  Use this function to count all records in the 'invoices' table.
SELECT COUNT(___) FROM ___;

-- Calculate the average of the 'Total' column in the 'invoices' table
-- Hint: The AVG() function calculates the average value of a numeric column. 
--  Use this function to find the average of the 'Total' column in the 'invoices' table.
SELECT AVG(___) FROM ___;

-- Group records in the 'invoices' table by the 'BillingCountry' column and count the number of invoices for each country
-- Hint: Use the GROUP BY clause to group records by a specific column. 
--  Then, use aggregate functions like COUNT() to perform calculations on each group.
SELECT ___, COUNT(___) FROM ___ GROUP BY ___;

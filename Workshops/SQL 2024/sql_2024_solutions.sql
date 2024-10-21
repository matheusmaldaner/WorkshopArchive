-- 1. Select every record from the city table
SELECT *
FROM city;

-- 1.1 Select name and region from the country table
SELECT name, region
FROM country;

-- 2. Which countries are from North America?
SELECT name, continent
FROM country
WHERE continent = 'North America';

-- 2.1 Which countries are from North or South America?
SELECT NAME, continent
FROM country
WHERE continent = 'North America' OR continent = 'South America';

-- 2.2 Which countries are from North America and became independent after 1900?
SELECT NAME, continent, indepyear
FROM country
WHERE continent = 'North America' AND indepyear > 1900;

-- 3. List the top 10 most populous cities and their population
SELECT name, population
FROM city
ORDER BY population DESC
LIMIT 10;

-- 4. How many records are in the countrylanguage table?
SELECT COUNT(*)
FROM countrylanguage;

-- 4.1. How many distinct languages are in the countrylanguage table?
SELECT COUNT(DISTINCT language) AS languages
FROM countrylanguage;

-- 5.  What is the sum of the surface area of all Asian countries?
SELECT SUM(surfacearea) AS total_surface_area
FROM country
WHERE continent = 'Asia';

-- 6. What is the average life expectancy of each region?
SELECT region, AVG(lifeexpectancy) AS avg_life_expectancy
FROM country
GROUP BY region;

-- 6.1 Which regions have an average life expectancy of more than 75 years?
SELECT region, AVG(lifeexpectancy) AS avg_life_expectancy
FROM country
GROUP BY region
HAVING avg_life_expectancy > 75;

-- 7. Join the city and countrylanguage tables
SELECT *
FROM city AS c1
INNER JOIN countrylanguage AS c3
ON c1.countrycode = c3.countrycode;

-- 8. What is the smallest Spanish speaking city (and its population)?
SELECT c1.name AS city, c1.population AS city_pop
FROM city AS c1
JOIN countrylanguage AS c3
ON c1.countrycode = c3.countrycode
WHERE c3.language = "Spanish"
ORDER BY c1.population
LIMIT 1;

-- 9. Which languages have at least 5 countries officially speaking them?
SELECT c3.language, COUNT(c2.name) AS count
FROM country AS c2
JOIN countrylanguage AS c3
ON c2.code = c3.countrycode
WHERE isofficial = 'T'
GROUP BY c3.language
HAVING count >= 5
ORDER BY count DESC;

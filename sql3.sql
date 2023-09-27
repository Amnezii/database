1. SELECT name
FROM cities
WHERE name like '%ськ%'

2. SELECT name
FROM cities
WHERE name LIKE '%донец%'

3. SELECT CONCAT(name, ' (', region, ')') as назва_регіон
FROM cities
WHERE population > 100000
ORDER BY name DESC

4. SELECT name, population, (population / 40000000.0) * 100 AS '%'
FROM cities
ORDER BY population DESC
LIMIT 10;

5. SELECT CONCAT(name, ' - ', ((population / 40000000.0) * 100), '%') AS 'name+%'
FROM cities
WHERE (population / 40000000.0) * 100 >= 0.1
ORDER BY ((population / 40000000.0) * 100) ASC;

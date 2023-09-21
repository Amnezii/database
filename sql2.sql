1. SELECT name, population
FROM cities 
where population > 1000000

2. SELECT name, population, region
FROM cities 
where region = 'E' || region = 'W'
order by population desc

3. SELECT name, population, region
FROM cities 
where population > 500000 && region in('S','C','N')

4. SELECT name, population, region
FROM cities
WHERE population > 150000 && population < 350000 && region in('E','W','N')
LIMIT 20

5. SELECT name, population, region
FROM cities
WHERE region IN('C','S','N')
ORDER BY population DESC
LIMIT 10 OFFSET 10;

#1 Using count, get the number of cities in the USA
Use world;
select count(Name) from city
where CountryCode = 'USA';
select * from city;

#2 Find out what the population and average life expectancy (use avg) for people in Argentina (ARG) is
select Name, sum(Population), avg(LifeExpectancy) from country
where Code = 'ARG';

#3 Using ORDER BY, LIMIT, what country has the highest life expectancy
select Name, LifeExpectancy from country
order by LifeExpectancy desc
Limit 1;


#4 Select 25 cities around the world that start with the letter 'F' in a single SQL query.
select Name from city
where Name like 'F%';


#5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
use world;
select ID, Name, Population
from city
where ID < 11;


#6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000.
select Name, Population from city
where Population > 2000000;


#7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.
select Name from city
where Name like 'Be%';


#8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
select Name, Population from city
where Population between 500000 and 1000000;


#9 Create a SQL statement to find a city with the lowest population in the city table.
select Name, Population from city
where Population = (select min(Population) from city);



#10 EER
# SQL-World-Queries
Initial SQL Queries 
Database includes 3 tables, as seen in the EER diagram
![image](https://user-images.githubusercontent.com/121234311/228190795-7de2d228-8adf-4be0-8a4b-888873fb9dd7.png)

First we familiarise with city table and work out the number of records (there are 4079 cities in the database)

select * from city
order by ID desc;
<img width="269" alt="image" src="https://user-images.githubusercontent.com/121234311/228193020-d9672fc7-645d-4607-8a96-ce9cdc0e09b4.png">

#1 Using count, get the number of cities in the USA

Use world;
select count(Name) from city
where CountryCode = 'USA';
<img width="83" alt="image" src="https://user-images.githubusercontent.com/121234311/228195741-0fd04ea0-2bb1-46e3-83da-7ac845599f14.png">

#2 Find out what the population and average life expectancy (use avg) for people in Argentina (ARG) is

select Name, sum(Population), avg(LifeExpectancy) from country
where Code = 'ARG';
<img width="224" alt="image" src="https://user-images.githubusercontent.com/121234311/228196153-6a57bb04-82b2-465b-bde7-d3e7393525ca.png">

#3 Using ORDER BY, LIMIT, what country has the highest life expectancy

select Name, LifeExpectancy from country
order by LifeExpectancy desc
Limit 1;
<img width="130" alt="image" src="https://user-images.githubusercontent.com/121234311/228196595-250ab17a-c301-4cf2-be03-19d1e743cffd.png">


#4 Select 25 cities around the world that start with the letter 'F' in a single SQL query.

select Name from city
where Name like 'F%';
<img width="140" alt="image" src="https://user-images.githubusercontent.com/121234311/228201418-67ce586f-a2c0-4156-b17a-f5d72eb1763e.png">


#5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.

use world;
select ID, Name, Population
from city
where ID < 11;
<img width="164" alt="image" src="https://user-images.githubusercontent.com/121234311/228201748-e894ec8e-87b1-4173-88a8-28542bddb618.png">


#6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000.

select Name, Population from city
where Population > 2000000;
<img width="140" alt="image" src="https://user-images.githubusercontent.com/121234311/228202192-6ba13982-727a-48b3-a695-eb892310c7ca.png">


#7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.

select Name from city
where Name like 'Be%';
<img width="88" alt="image" src="https://user-images.githubusercontent.com/121234311/228202473-71bd32cb-7daa-42ca-921c-ae11b7d01b41.png">


#8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.

select Name, Population from city
where Population between 500000 and 1000000;
<img width="145" alt="image" src="https://user-images.githubusercontent.com/121234311/228202925-472f62c8-e831-4ada-a3f7-ba02d16a2b88.png">


#9 Create a SQL statement to find a city with the lowest population in the city table.

select Name, Population from city
where Population = (select min(Population) from city);
<img width="128" alt="image" src="https://user-images.githubusercontent.com/121234311/228203056-ebdd3271-bc16-42da-bc46-423cf2e3e4af.png">

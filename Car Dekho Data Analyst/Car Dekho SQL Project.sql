SELECT * FROM cardekho.car_dekho;
USE cardekho;

-- Get count of total record

SELECT count(*) FROM car_dekho;

-- How many car will be available in 2023?

SELECT count(*) FROM car_dekho WHERE year = 2023;

-- How many car will be available in 2020,2021,2022

SELECT count(*) FROM car_dekho WHERE year = 2020;
SELECT count(*) FROM car_dekho WHERE year = 2021;
SELECT count(*) FROM car_dekho WHERE year = 2022;

-- We can do also at once

SELECT count(*) FROM car_dekho where year in (2020, 2022, 2023) group by year;

-- How many cars do we have by year

select year, count(* ) from car_dekho group by year;

-- How many diesel car we had in 2020

select count(*) from car_dekho where year = 2020 and fuel= "diesel";

-- How many pertrol car we had in 2020

select count(*) from car_dekho where year = 2020 and fuel = "petrol";

-- Now write a query for check fuel cars (Petrol, Diesle, CNG) according to year wise

select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Which years we had more than 100 cars

select year, count(*) from car_dekho group by year having count(*)>100;

-- Write a query for car count between 2015 and 2023

select count(*) from car_dekho where year between 2015 and 2023;

-- Write a query for car count details between 2015 and 2023

select * from car_dekho where year between 2015 and 2023;
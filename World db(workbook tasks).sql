-- select * from country;
-- select count(*) as 'Number_of_Cities_in_USA' from city where CountryCode='USA';
-- select count(*) as 'Number_of_Cities' from city;
-- select CountryCode, count(Name) AS 'Number_of_Cities' from city group by CountryCode order by count(Name) desc;
-- select name as 'Country_with_Highest_Life_Expectancy', LifeExpectancy from country order by LifeExpectancy desc limit 1;
-- select name, population from city where population between '500000' and '1000000' order by population desc;
-- select * from city where ID = (SELECT capital from dbo.country where name = 'spain')
-- select name as 'Country_Name', avg(population) as 'Average_Population' from country group by name;
-- select city.name as 'City_Name', city.CountryCode, city.population as 'City_Population', country.gnp as 'GNP', country.gnp/country.population as 'GNP_per_Capita', country.gnp/country.population*city.population as 'City_Total_GNP' from city inner join country on city.CountryCode = country.code where country.GNP>0 and city.population>0 and country.gnp/country.population > (select avg(country.gnp/country.population) from country) order by City_Total_GNP desc;
-- select * from city order by population desc;
-- select name, population from city order by Population desc limit 10;
-- select name, population from city where population>2000000 order by population desc;
-- select name, Population from City order by Population desc limit 30,10;
-- select name as 'Cities_in_Europe' from country where Continent = 'Europe';
-- select * from city where ID = (SELECT capital from country where name = 'spain');
-- select country.name as 'Country', city.name as 'Capital' from country left join city on country.capital = city.id order by country.name asc;
-- select city.name as 'Capital_City', country.name as 'Country_Name', city.population as 'Population' from city inner join country on city.id=country.capital order by city.name asc;
-- select name as 'Country_Name', population, surfacearea as 'Surface_Area', population/surfacearea as 'Population_Density' from country where SurfaceArea>0 and Population>0 order by population_density asc;
-- select country.name as 'Country_Name', country.LifeExpectancy as 'Life_Expectancy', format(GNP,2) from country  order by gnp desc limit 10;




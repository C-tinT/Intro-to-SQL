# Intro to SQL
## Introduction
This is an exploration of the 'Wolrd' dataset through SQL. We'll be looking at some demographic and teritory details by city/country and try to answer some questions.

Practical implications of this exercise:
- Developing a habit of clean and effective SQL query writing
- Cross referencing variables by joining tables in oder to achieve a wider picture
- Analytical thinking reflected in the structure of the data query
- An understanding of how SQL can be applied to business scenarios and to potential business operations.

## Analysis
### 1. Exploring cities.

- Top 10 cities by population size?

`
select name, population 
from city 
order by Population desc limit 10;
`

<img width="309" height="392" alt="image" src="https://github.com/user-attachments/assets/6a7130f5-31dd-412a-98e7-b46bed15f27d" />


- Cities in places 31-40 of the population list?

`
select name, Population from City order by Population desc limit 30,10;
`


- Cities with population over 2 millions?

`
select name, population from city where population>2000000 order by population desc;
`

- Cities with population between 500,000 - 1,000,000 ?

`
select name, population from city where population between '500000' and '1000000' order by population desc;
`

- Cities in Europe?

`
select name as 'Cities_in_Europe' from country where Continent = 'Europe';
`

- A list of capital cities and their populations?

`
select city.name as 'Capital_City', country.name as 'Country_Name', city.population as 'Population' 
from city inner join country on city.id=country.capital 
order by city.name asc;
`


### 2. Exploring countries.

- The country with highest lie expectancy?

`
select name as 'Country_with_Highest_Life_Expectancy', LifeExpectancy from country order by LifeExpectancy desc limit 1;
`

<img width="530" height="71" alt="image" src="https://github.com/user-attachments/assets/ab3637c6-2c1b-4cc2-8605-bcb7fb6a4990" />


- A quick pivot like table to see the number of cities by country?

`
select CountryCode, count(Name) AS 'Number_of_Cities' from city group by CountryCode order by count(Name) desc;
`

<img width="320" height="250" alt="image" src="https://github.com/user-attachments/assets/5558670f-9cd9-440f-87f6-e6f58cad5c96" />

- A list of countries and their capital city?

```
select country.name as 'Country', city.name as 'Capital'
from country left join city on country.capital = city.id
order by country.name asc;
```

- Countries with lowest population density?

```
select name as 'Country_Name', population, surfacearea as 'Surface_Area', population/surfacearea as 'Population_Density'
from country
where SurfaceArea>0 and Population>0
order by population_density asc;
```

### 3. Life expectancy and GNP

- Top 10 countries with highest GNP.

```
select country.name as 'Country_Name', country.LifeExpectancy as 'Life_Expectancy', format(gnp,2)
from country
order by GNP desc limit 10;
```
<img width="488" height="339" alt="image" src="https://github.com/user-attachments/assets/c43cd7cf-2bfd-4be2-b895-cf02c3fdcdc5" />



- Top 10 countries with highest life expectancy.

```
select country.name as 'Country_Name', country.LifeExpectancy as 'Life_Expectancy', format(gnp,2) as 'GNP'
from country where LifeExpectancy is not null
order by LifeExpectancy desc limit 10;
```

<img width="607" height="334" alt="image" src="https://github.com/user-attachments/assets/5d210a1f-2a21-4182-92b9-d275709acac4" />


**Conclusion:** as it transpires from the second table, there is no significant correlation between the two variables. High life expectancy is not determined by a nation's wealth. Japan is just an exception that might point towards the determining factor be it social structure, government policies, climate or geography. Most likely a mix of all these.

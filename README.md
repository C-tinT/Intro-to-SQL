# Intro to SQL
## Introduction
This is an attempt to explore the 'Wolrd' dataset through SQL. We'll be looking at some demographic, teritory and GNP details by city/country and try to answer some questions. This is rather a collection of exercises than a consolidated research project.  

## Analysis
1. Exploring cities and demographics.
Top 10 cities by population size:

`select name, population from city order by Population desc limit 10;`


/*
source: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
*/
select distinct(city) from station
where city like 'i%'
or city like 'a%'
or city like 'e%'
or city like 'i%'
or city like 'o%'
or city like 'u%'

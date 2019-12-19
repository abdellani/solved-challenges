/*
source: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
*/
select distinct(city) from station where
lower(substr(city,length(city),1)) not in ('a', 'e', 'i', 'o', 'u')

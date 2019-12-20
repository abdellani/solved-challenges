/*
source: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
*/

select distinct(city) from station where 
lower(substr(city,1,1)) not in ('a','e','u','i','o')
or lower(substr(city,length(city),1)) not in ('a','e','u','i','o')

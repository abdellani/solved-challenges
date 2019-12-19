/*
https://www.hackerrank.com/challenges/weather-observation-station-8/problem
*/
select city from station where
lower(substr(city,1,1)) in ('a', 'e', 'i', 'o', 'u')
and
lower(substr(city,length(city),1)) in ('a', 'e', 'i', 'o', 'u')

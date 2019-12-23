/*
source: https://www.hackerrank.com/challenges/weather-observation-station-13/problem
*/
select truncate(sum(lat_n),4) from station 
where 38.788 < lat_n and lat_n < 137.2345

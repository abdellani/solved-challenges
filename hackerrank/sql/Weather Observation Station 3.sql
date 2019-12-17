/*
source: https://www.hackerrank.com/challenges/weather-observation-station-3/problem
*/
select DISTINCT(CITY) from STATION  where ID%2 = 0 order by city;

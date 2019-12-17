/*
source: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
*/
select CITY,length(CITY) from station 
where id in (
    select * from (
        select id from station order by length(city) ASC,city ASC LIMIT 1
    ) as t1
)
or id in (
    select * from (
        select  id from station order by length(city) DESC,city ASC LIMIT 1
 ) as t2
)

#source : https://leetcode.com/problems/not-boring-movies/
# Write your MySQL query statement below
select * from cinema where 
id%2 = 1 and
not description like '%boring%' 
order by rating desc

/*
source: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
*/

select 
    case 
        when a+b<=c or a+c <=b or b+c<=a then 'Not A Triangle'
        when a=b and a=c then 'Equilateral' 
        when a=b or a=c or b=c then 'Isosceles'
        else 'Scalene'
    end
from TRIANGLES

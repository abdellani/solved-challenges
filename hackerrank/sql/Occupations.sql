/*
source : https://www.hackerrank.com/challenges/occupations/problem
solution : https://www.hackerrank.com/challenges/occupations/forum/comments/114779
solution 2: https://stackoverflow.com/a/48862792
*/
/*
solution 1
*/
set @r1=0, @r2=0, @r3=0, @r4=0;
select min(Doctor),min(Professor),min(Singer),min(Actor) from 
(
    select 
        case when Occupation='Doctor' then Name end as Doctor,
        case when Occupation='Professor' then Name end as Professor,
        case when Occupation='Singer' then Name end as Singer,
        case when Occupation='Actor' then Name end as Actor,
        case when Occupation='Doctor' then (@r1:=@r1+1)
            when Occupation='Professor' then (@r2:=@r2+1)
            when Occupation='Singer' then (@r3:=@r3+1)
            when Occupation='Actor' then (@r4:=@r4+1) 
        end as RowNumber
    from OCCUPATIONS
    order by Name
)  as t
group by RowNumber
/*
solution 2
*/
select 
    max(case when occupation = 'Doctor' then name  end ),
    max(case when occupation = 'Professor' then name  end ),
    max(case when occupation = 'Singer' then name  end ),
    max(case when occupation = 'Actor' then name  end )
from 
(
    select name,occupation,
        if (occupation <> @p, @rn:=1 ,@rn:=@rn+1) rn,
        @p:=occupation p
        from occupations
        cross join (select @rn:=0,@p:=null) r
        order by occupation,name
) as t  
group by rn;

--LeetCode 626.Exchange Seats
select (case when mod(id,2) <> 0 and id <> counts then id+1
             when mod(id,2) = 0 then id-1
             when mod(id,2) <> 0 and id = counts then id
             end) as id, 
        student
from seat, (select count(*) as counts from seat) as countings
order by 1;
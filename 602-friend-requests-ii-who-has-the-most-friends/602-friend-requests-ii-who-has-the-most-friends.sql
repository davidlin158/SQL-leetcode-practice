# Write your MySQL query statement below
select id, count(*) num from 
(
    # make it all together as one col. then select it from it.
    # has to use union all to avoid delete duplicate
      (select requester_id id from requestaccepted) 
      union all
      (select accepter_id id from requestaccepted)
) tb
group by id order by num desc limit 1
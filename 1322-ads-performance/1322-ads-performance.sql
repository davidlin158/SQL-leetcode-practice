# Write your MySQL query statement below
select ad_id, 
# here u have to use sum, count will only return the whole column
ifnull(round(sum(action = 'Clicked') / sum(action = 'Clicked' or action = 'Viewed') * 100, 2), 0) as ctr
from Ads
group by ad_id
# u have to follow this, cause ctr has the desc  order
order by ctr desc, ad_id

# Write your MySQL query statement below
select *, case when (abs(x + y) > z and abs(x-y)<z) then "Yes"
 else "No"
 end as triangle
 from Triangle


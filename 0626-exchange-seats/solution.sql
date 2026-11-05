# Write your MySQL query statement below
SELECT id, CASE 
WHEN id % 2 = 1 and lg2 is not null then lg2
WHEN id % 2 = 0 then lg1
else student
END as student
FROM
(select id, LAG(student, 1) over (Order by id) as lg1, LEAD(student, 1) OVER (Order by id) as lg2, student
from Seat) AS TB1

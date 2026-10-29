select A.machine_id, ROUND(sum(B.timestamp-A.timestamp)/count(A.activity_type), 3) as processing_time
from Activity A join Activity B on A.machine_id = B.machine_id and A.process_id = B.process_id
where A.activity_type = "start" AND B.activity_type = "end"
group by A.machine_id

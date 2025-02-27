
    
    

select
    rider_id as unique_field,
    count(*) as n_records

from "endless_trials"."kamen_rider_reiwa"."rider_view"
where rider_id is not null
group by rider_id
having count(*) > 1



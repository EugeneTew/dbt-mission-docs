
  
    

  create  table "endless_trials"."kamen_rider_reiwa"."rider_rating__dbt_tmp"
  
  
    as
  
  (
    

WITH rider_data AS (
    SELECT * FROM "endless_trials"."kamen_rider_reiwa"."rider_view"
)

SELECT 
    rider_series,
    COUNT(*) as total_riders,
    SUM(CASE WHEN overall_rating = 'Success' 
        or overall_rating = 'Great Success' 
        THEN 1 ELSE 0 END) as Successful_Riders,
    ROUND(100.0 * SUM(CASE WHEN overall_rating = 'Success' 
        or overall_rating = 'Great Success' 
        THEN 1 ELSE 0 END) / COUNT(*), 2) as Overall_Rider_Rating
FROM rider_data
GROUP BY rider_series
ORDER BY Overall_Rider_Rating DESC
  );
  
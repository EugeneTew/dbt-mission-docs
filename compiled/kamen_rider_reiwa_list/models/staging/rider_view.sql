

SELECT 
    rider_id,
    rider_name,
    rider_year,
    rider_category,
    rider_series,
    rider_rating,
    CASE 
        WHEN rider_rating between 4 and 4.5 
            or rider_rating = 4 THEN 'Success'
        WHEN rider_rating between 3 and 4 
            or rider_rating = 3 THEN 'Mild'
        WHEN rider_rating >= 4.5 THEN 'Great Success'
        ELSE 'Bad' 
    END AS overall_rating
FROM "endless_trials"."kamen_rider"."reiwa"
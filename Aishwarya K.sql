SELECT 

SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END) AS Female_Passengers_Count, --1st query

SUM(CASE WHEN Class = 'Business' THEN 1 ELSE 0 END) AS BusinessClass_Passengers_Count,  --2nd query

SUM(CASE WHEN Class = 'Eco' THEN 1 ELSE 0 END) AS EconomyClass_Passengers_Count,  --3rd query

SUM(CASE WHEN age < 13 THEN 1 ELSE 0 END) AS Children_Passengers_Count,  --4th query

SUM(CASE WHEN age > 16 AND Class = 'Business' THEN 1 ELSE 0 END) AS AdultBusinessClass_Passengers_Count  --5th query

FROM airline;

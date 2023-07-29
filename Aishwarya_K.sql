SELECT 

SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END) AS Female_Passengers_Count, --1st query

SUM(CASE WHEN Class = 'Business' THEN 1 ELSE 0 END) AS BusinessClass_Passengers_Count,  --2nd query

SUM(CASE WHEN Class = 'Eco' THEN 1 ELSE 0 END) AS EconomyClass_Passengers_Count,  --3rd query

SUM(CASE WHEN age < 13 THEN 1 ELSE 0 END) AS Children_Passengers_Count,  --4th query

SUM(CASE WHEN age > 16 AND Class = 'Business' THEN 1 ELSE 0 END) AS AdultBusinessClass_Passengers_Count  --5th query

FROM airline;


--OPTIMIZED QUERY

SELECT COUNT(*) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female'; 
SELECT COUNT(*) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = 'Business';
SELECT COUNT(*) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';
SELECT COUNT(*) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;
SELECT COUNT(*) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = 'Business';
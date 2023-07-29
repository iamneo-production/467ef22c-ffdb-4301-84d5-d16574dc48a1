set timing on;

SELECT 

SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END) AS Female_Passengers_Count, --1st query

SUM(CASE WHEN Class = 'Business' THEN 1 ELSE 0 END) AS BusinessClass_Passengers_Count,  --2nd query

SUM(CASE WHEN Class = 'Eco' THEN 1 ELSE 0 END) AS EconomyClass_Passengers_Count,  --3rd query

SUM(CASE WHEN age < 13 THEN 1 ELSE 0 END) AS Children_Passengers_Count,  --4th query

SUM(CASE WHEN age > 16 AND Class = 'Business' THEN 1 ELSE 0 END) AS AdultBusinessClass_Passengers_Count  --5th query

FROM airline;


--OPTIMIZED QUERIES
--Final

---First Query
SELECT COUNT(*) AS female_passenger_count
 FROM AIRLINE WHERE GENDER = 'Female';

 --Second Query
SELECT COUNT(*) AS business_class_passenger_count
 FROM AIRLINE WHERE CLASS = 'Business';

 --Third Query
SELECT COUNT(*) AS economy_class_passenger_count 
FROM AIRLINE WHERE CLASS = 'Eco';

--Fourth Query
SELECT COUNT(*) AS child_passenger_count 
FROM AIRLINE WHERE AGE < 13;

--Fifth Query
SELECT COUNT(*)  as Business_class_count_above_16 from airline where 
age>16 and class='Business'; 
VARIABLE myConstant VARCHAR2(10);
EXEC :myConstant := 'Business';

set timing on;
SELECT 
---1st query
  COUNT(CASE WHEN gender = 'Female' THEN 1 END) AS Female_Passengers_Count,

---2nd query
  COUNT(CASE WHEN Class = :myconstant THEN 1 END) AS BusinessClass_Passengers_Count,  

---3rd query
  COUNT(CASE WHEN Class = 'Eco' THEN 1 END) AS EconomyClass_Passengers_Count,

---4th query  
  COUNT(CASE WHEN age < 13 THEN 1 END) AS Children_Passengers_Count,
  
---5th query
  COUNT(CASE WHEN age > 16 AND Class = :myconstant THEN 1 END) AS AdultBusinessClass_Passengers_Count
FROM airline;



--OPTIMIZED QUERIES

---First Query
SELECT COUNT(*) AS female_passenger_count
 FROM AIRLINE WHERE GENDER = 'Female';

 --Second Query
SELECT COUNT(*) AS business_class_passenger_count
 FROM AIRLINE WHERE CLASS = :myconstant;

 --Third Query
SELECT COUNT(*) AS economy_class_passenger_count 
FROM AIRLINE WHERE CLASS = 'Eco';

--Fourth Query
SELECT COUNT(*) AS child_passenger_count 
FROM AIRLINE WHERE AGE < 13;

--Fifth Query
SELECT COUNT(*)  as Business_class_count_above_16 from airline where 
age>16 and class= :myconstant; 

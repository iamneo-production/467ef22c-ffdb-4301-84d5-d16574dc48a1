VARIABLE myConstant VARCHAR2(10);
EXEC :myConstant := 'Business';
--My Queries

--First Query
SELECT COUNT(*) AS FEMALE_PASSENGER_COUNT FROM AIRLINE
WHERE GENDER = 'Female';

--Second Query
SELECT COUNT(*) AS BUSINESS_CLASS_PASSENGER_COUNT FROM AIRLINE
WHERE CLASS = :myConstant;

--Third Query
SELECT COUNT(*) AS ECO_CLASS_PASSENGER_COUNT FROM AIRLINE
WHERE CLASS = 'Eco';

--Fourth Query
SELECT COUNT(*) AS AGE_BELOW_13_PASSENGER_COUNT FROM AIRLINE
WHERE AGE < 13;

--Fifth Query
SELECT COUNT(*) AS AGE_ABOVE_16_BUSINESS_CLASS_PASSENGER_COUNT FROM(
    SELECT ID FROM AIRLINE
    WHERE AGE > 16 AND CLASS = :myConstant
) SUB;

--Optimized Final Queries

---First Query
SELECT COUNT(*) AS female_passenger_count
 FROM AIRLINE WHERE GENDER = 'Female';

 --Second Query
SELECT COUNT(*) AS business_class_passenger_count
 FROM AIRLINE WHERE CLASS =:myConstant;

 --Third Query
SELECT COUNT(*) AS economy_class_passenger_count 
FROM AIRLINE WHERE CLASS = 'Eco';

--Fourth Query
SELECT COUNT(*) AS child_passenger_count 
FROM AIRLINE WHERE AGE < 13;

--Fifth Query
SELECT COUNT(*)  as Business_class_count_above_16 from airline where 
age>16 and class=:myConstant;
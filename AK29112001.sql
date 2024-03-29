set timing on;

VARIABLE myConstant VARCHAR2(10);
EXEC :myConstant := 'Business';


--MY QUERIES

SELECT  
    COUNT(CASE WHEN GENDER = 'Female' THEN 1 END) AS FEMALE_PASSENGERS, 
    COUNT(CASE WHEN CLASS = :myConstant THEN 1 END) AS BUSINESS_CLASS_COUNT, 
    COUNT(CASE WHEN CLASS = 'Eco' THEN 1 END) AS ECONOMY_CLASS_COUNT,
    COUNT(CASE WHEN AGE < 13 THEN 1 END) AS CHILDREN_COUNT, 
    COUNT(CASE WHEN AGE > 16 AND CLASS = :myConstant THEN 1 END) AS BUSINESS_CLASS_PASSENGERS_ABOVE_16 
FROM    
    airline;


--OPTIMIZED QUERIES

-- 1. query to find the number of female passengers who have made bookings for air tickets
SELECT COUNT(S_ID) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';

-- 2. query to find the total number of passengers who have made bookings for air tickets
SELECT COUNT(S_ID) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = :myConstant;

-- 3. query to find the number of economy class passengers
SELECT COUNT(S_ID) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';

-- 4. query to find the number of children who are all booked tickets
SELECT COUNT(S_ID) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;

-- 5. query to find the count of passengers who are above the age of 16 and have booked tickets in the business class
SELECT COUNT(S_ID) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = :myConstant;

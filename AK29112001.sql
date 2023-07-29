
SELECT  
    COUNT(CASE WHEN GENDER = 'Female' THEN 1 END) AS FEMALE_PASSENGERS, 
    COUNT(CASE WHEN CLASS = 'Business' THEN 1 END) AS BUSINESS_CLASS_COUNT, 
    COUNT(CASE WHEN CLASS = 'Eco' THEN 1 END) AS ECONOMY_CLASS_COUNT,
    COUNT(CASE WHEN AGE < 13 THEN 1 END) AS CHILDREN_COUNT, 
    COUNT(CASE WHEN AGE > 16 AND CLASS = 'Business' THEN 1 END) AS BUSINESS_CLASS_PASSENGERS_ABOVE_16 
FROM    
    airline;


--OPTIMIZED QUERIES

-- 1. query to find the number of female passengers who have made bookings for air tickets
SELECT COUNT(*) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';

-- 2. query to find the total number of passengers who have made bookings for air tickets
SELECT COUNT(*) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = 'Business';

-- 3. query to find number of economy class passengers
SELECT COUNT(*) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';

-- 4. query to find the number of children who are all booked tickets
SELECT COUNT(*) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;

-- 5. query to find count of passengers who are above the age of 16 and have booked tickets in the business class
SELECT COUNT(*) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = 'Business';
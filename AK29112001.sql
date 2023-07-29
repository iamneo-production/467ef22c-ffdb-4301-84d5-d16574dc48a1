
SELECT  
    COUNT(CASE WHEN GENDER = 'Female' THEN 1 END) FEMALE_PASSENGERS, /* 1. count of female passengers */
    COUNT(CASE WHEN CLASS = 'Business' THEN 1 END) BUSINESS_COUNT, /*2. count of business class passengers */
    COUNT(CASE WHEN CLASS = 'Eco' THEN 1 END) ECONOMY_COUNT, /* 3. count of economy class passengers */
    COUNT(CASE WHEN AGE < 13 THEN 1 END) CHILDREN_BELOW_13, /* 4. count of children with age below 13 */
    COUNT(CASE WHEN AGE > 16 AND CLASS = 'Business' THEN 1 END) BUSINESS_WITH_AGE_ABOVE_16 /*5. count of business class passengers with age above 16*/
FROM    
    airline;

--OPTIMIZED QUERIES
/* 1. query to find the number of female passengers who have made bookings for air tickets */
SELECT COUNT(*) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';

/* 2. query to find the total number of passengers who have made bookings for air tickets */
SELECT COUNT(*) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = 'Business';

/* 3. query to find number of economy class passengers*/

SELECT COUNT(*) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';
SELECT COUNT(*) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;
SELECT COUNT(*) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = 'Business';
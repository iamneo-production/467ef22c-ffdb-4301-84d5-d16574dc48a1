
SELECT  
    COUNT(CASE WHEN GENDER = 'Female' THEN 1 END) FEMALE_PASSENGERS, /* 1. count of female passengers */
    COUNT(CASE WHEN CLASS = 'Business' THEN 1 END) BUSINESS_COUNT, /*2. count of business class passengers */
    COUNT(CASE WHEN CLASS = 'Eco' THEN 1 END) ECONOMY_COUNT, /* 3. count of economy class passengers */
    COUNT(CASE WHEN AGE < 13 THEN 1 END) CHILDREN_BELOW_13, /* 4. count of children with age below 13 */
    COUNT(CASE WHEN AGE > 16 AND CLASS = 'Business' THEN 1 END) BUSINESS_WITH_AGE_ABOVE_16 /*5. count of business class passengers with age above 16*/
FROM    
    airline;
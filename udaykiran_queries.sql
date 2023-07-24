SELECT COUNT(*) AS female_passenger_count
FROM AIRLINE
WHERE GENDER = 'Female';


SELECT COUNT(*) AS business_class_passenger_count
FROM AIRLINE
WHERE CLASS = 'Business';


SELECT COUNT(*) AS economy_class_passenger_count
FROM AIRLINE
WHERE CLASS = 'Eco';


SELECT COUNT(*) AS child_passenger_count
FROM AIRLINE
WHERE AGE < 13;


SELECT COUNT(*) AS passengers_above_16_in_business_class_count
FROM AIRLINE
WHERE AGE > 16 AND CLASS = 'Business';
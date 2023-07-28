--Query 1
SELECT COUNT(*) AS female_passenger_count
FROM AIRLINE
WHERE GENDER = 'Female';
/

--Query 2
SELECT COUNT(*) AS business_class_passenger_count
FROM AIRLINE
WHERE CLASS = 'Business';
/

--Query 3
SELECT COUNT(*) AS economy_class_passenger_count
FROM AIRLINE
WHERE CLASS = 'Eco';
/

--Query 4
SELECT COUNT(*) AS child_passenger_count
FROM AIRLINE
WHERE AGE < 13;
/

--Query 5
SELECT COUNT(*) AS passengers_above_16_in_business_class_count
FROM AIRLINE
WHERE AGE > 16 AND CLASS = 'Business';
/
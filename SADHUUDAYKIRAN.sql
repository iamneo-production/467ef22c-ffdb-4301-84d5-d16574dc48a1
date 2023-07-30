--My Queries in SQL
set timing on;
VARIABLE business_var VARCHAR2(10);
EXEC :business_var := 'Business';
-- Query 1
SELECT COUNT(GENDER) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';
-- Query 2
SELECT COUNT(CLASS) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = :business_var;
-- Query 3
SELECT COUNT(CLASS) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';
-- Query 4
SELECT COUNT(AGE) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;
-- Query 5
SELECT COUNT(CLASS) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = :business_var;


-- Optimised Queries in SQL
-- Query 1
SELECT COUNT(*) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';

-- Query 2
SELECT COUNT(*) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = :business_var;

-- Query 3
SELECT COUNT(*) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';

-- Query 4
SELECT COUNT(*) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;

-- Query 5
SELECT COUNT(*) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = :business_var;

-- Queries
set timing on;
-- First ques
SELECT count(*) female_passenger_count from airline where GENDER = 'Female';
-- second ques
SELECT COUNT(CLASS) business_Class_passenger_count from AIRLINE WHERE CLASS='Business';
--  Third ques
SELECT COUNT(CLASS) economy_Class_passenger_count from AIRLINE WHERE CLASS='Eco';
-- Fourth ques
SELECT COUNT(*) child_Passenger_Count from AIRLINE WHERE AGE < 13;
-- fifth ques
SELECT COUNT(*) Passenger_Above_16_age_Business_class_Count from AIRLINE WHERE AGE > 16 and CLASS='Business';


-- Optimised Queries
SELECT COUNT(*) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';
SELECT COUNT(*) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = 'Business';
SELECT COUNT(*) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';
SELECT COUNT(*) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;
SELECT COUNT(*) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = 'Business';



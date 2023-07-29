-- Queries
set timing on;
-- First ques
SELECT count(*) as female_passenger_count from airline where GENDER = 'Female';
-- second ques
SELECT COUNT(CLASS) as business_Class_passenger_count from AIRLINE WHERE CLASS='Business';
--  Third ques
SELECT COUNT(CLASS) as economy_Class_passenger_count from AIRLINE WHERE CLASS='Eco';
-- Fourth ques
SELECT COUNT(*) as child_Passenger_Count from AIRLINE WHERE AGE < 13;
-- fifth ques
<<<<<<< HEAD
SELECT COUNT(*) Passenger_Above_16_age_Business_class_Count from AIRLINE WHERE AGE > 16 and CLASS='Business';
=======
SELECT COUNT(*) as Passenger_Above_16_age_Business_class_Count from AIRLINE WHERE AGE > 16 and CLASS='Business';
>>>>>>> origin/Oracle-Workspace-sree-keerthi-annam

-- Optimised Queries
SELECT COUNT(*) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';
SELECT COUNT(*) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = 'Business';
SELECT COUNT(*) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';
SELECT COUNT(*) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;
SELECT COUNT(*) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = 'Business';



-- First ques
SELECT count(*) female_passenger_count from airline where GENDER = 'Female';


-- second ques
SELECT COUNT(CLASS) business_Class_passenger_count from AIRLINE WHERE CLASS='Business';


--  Third ques
SELECT COUNT(CLASS) economy_Class_passenger_count from AIRLINE WHERE CLASS='Eco';


-- Fourth ques
SELECT COUNT(*) child_Passenger_Count from AIRLINE WHERE AGE < 13;


-- fifth ques
SELECT COUNT(*) Passenger_Above_16_Business_class_Count from AIRLINE WHERE AGE > 16 and CLASS='Business';



--My Queries
--First Query
SELECT COUNT(*) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';

--Second Query
SELECT COUNT(*) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = 'Business';

--Third Query
SELECT COUNT(*) AS economy_class_passenger_count FROM AIRLINE WHERE CLASS = 'Eco';

--Fourth Query
SELECT COUNT(*) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;

--Fifth Query
SELECT COUNT(*) AS passengers_above_16_in_business_class_count FROM AIRLINE WHERE AGE > 16 AND CLASS = 'Business';

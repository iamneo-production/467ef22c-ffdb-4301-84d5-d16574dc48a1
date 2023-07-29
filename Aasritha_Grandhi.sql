set timing on;

---First Query

SELECT COUNT(GENDER) AS Female_Passengers_count FROM 
airline WHERE GENDER='Female' ;


--Second Query

SELECT COUNT(CLASS) AS Business_class_count FROM
airline WHERE CLASS='Business';


--Third Query

SELECT COUNT(CLASS) AS Eco_class_count FROM
airline WHERE CLASS='Eco';


--Fourth Query
 
SELECT COUNT(AGE) AS Children_count FROM
airline WHERE  age<13;


--Fifth Query

SELECT COUNT(CLASS) AS Business_class_count_above16 FROM 
AIRLINE WHERE age>16 and CLASS='Business';   


--OPTIMIZED QUERIES
--Final

---First Query
SELECT COUNT(*) AS female_passenger_count
 FROM AIRLINE WHERE GENDER = 'Female';

 --Second Query
SELECT COUNT(*) AS business_class_passenger_count
 FROM AIRLINE WHERE CLASS = 'Business';

 --Third Query
SELECT COUNT(*) AS economy_class_passenger_count 
FROM AIRLINE WHERE CLASS = 'Eco';

--Fourth Query
SELECT COUNT(*) AS child_passenger_count 
FROM AIRLINE WHERE AGE < 13;

--Fifth Query

SELECT COUNT(*)  as Business_class_count_above_16 from airline where 
age>16 and class='Business'; 








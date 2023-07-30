
set timing on;

variable myconstant varchar2(20);
exec :myconstant:='Business';
 

--first query--

SELECT COUNT(GENDER) AS Femalepassengers 
FROM airline WHERE GENDER='Female';


--second query--

SELECT COUNT(CLASS) AS Businessclass 
FROM airline where CLASS=:myconstant;

--third query--

SELECT COUNT(CLASS) AS Ecoclass 
FROM airline WHERE CLASS='Eco';

--fourth query--

SELECT COUNT(CLASS) AS CHILDREN
FROM airline WHERE AGE<13;

--fifth query--

SELECT COUNT(CLASS) AS Businessclass_above16
FROM airline WHERE age>16 and CLASS=:myconstant;

--OPTIMIZED QUERIES

--First Query
SELECT COUNT(*) AS female_passenger_count FROM AIRLINE WHERE GENDER = 'Female';

--Second Query
SELECT COUNT(*) AS business_class_passenger_count FROM AIRLINE WHERE CLASS = :myconstant;

--Third Query
SELECT COUNT(*) AS Eco_class 
FROM airline WHERE Class='Eco';

--Fourth Query
SELECT COUNT(*) AS child_passenger_count FROM AIRLINE WHERE AGE < 13;

--Fifth Query
SELECT COUNT(*) AS passengers_above_16_in_business_class_count FROM AIRLINE Where age>16 and CLASS=:myconstant; 



set timing on;
select * from airline;

--first query--

SELECT COUNT(GENDER) AS Femalepassengers 
FROM airline WHERE GENDER='Female';


--second query--

SELECT COUNT(CLASS) AS Businessclass 
FROM airline where CLASS='Business';

--third query--

SELECT COUNT(CLASS) AS Ecoclass 
FROM airline WHERE CLASS='Eco';

--fourth query--

SELECT COUNT(CLASS) AS CHILDREN
FROM airline WHERE AGE<13;

--fifth query--

SELECT COUNT(CLASS) AS Businessclass_above16
FROM airline WHERE age>16 and CLASS='Business';
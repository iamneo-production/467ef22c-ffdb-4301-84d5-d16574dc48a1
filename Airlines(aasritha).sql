set timing on;
select * from airline;

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





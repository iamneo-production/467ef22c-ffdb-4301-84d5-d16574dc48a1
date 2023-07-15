set timing on;
select * from airline;

---First Query

SELECT COUNT(S_ID) AS Female_Passengers_count FROM 
airline WHERE GENDER LIKE 'Female' ;

--Second Query

SELECT COUNT(S_ID) AS Business_class_count FROM
airline WHERE CLASS='Business';


--Third Query

SELECT COUNT(S_ID) AS Eco_class_count FROM
airline WHERE CLASS='Eco';


--Fourth Query

SELECT COUNT(S_ID) AS Children_count FROM
airline WHERE  age<13;


--Fifth Query

 SELECT COUNT(S_ID) AS Business_class_count_above16 FROM 
AIRLINE WHERE age>16 and CLASS='Business';   






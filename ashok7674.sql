-- My SQL Queries 

Set timing on;
VARIABLE BUSINESS_CONSTANT VARCHAR2(15);
EXEC :BUSINESS_CONSTANT :='Business';

--write a sql query to find number of female passenger who have made bookings for air tickets--
SELECT COUNT(GENDER)AS f_p_count FROM AIRLINE WHERE GENDER = 'Female';

--write a sql query to find number of passenger who have booked tickets in the business class--
SELECT COUNT(CLASS)AS b_c_p_count FROM AIRLINE WHERE CLASS =:BUSINESS_CONSTANT;

-- write a sql query to find the number of passenger who have booked tickets in the 'eco' class--
SELECT COUNT(CLASS)AS e_c_p_count FROM airline WHERE CLASS ='Eco';

--write a sql query to find number of childern's who are all book the tickets(childerns are below age 13)--
SELECT COUNT(AGE)AS c_p_count FROM airline WHERE AGE < 13;

-- write a sql query to count of passenger who are above the age of 16 and hqave booked tickets in the business class--
SELECT COUNT(CLASS) AS p_above_16_in_b_c_count FROM AIRLINE WHERE AGE > 16 AND CLASS = :BUSINESS_CONSTANT;



-- Optimized Queries (Team Neo)

--write a sql query to find number of female passenger who have made bookings for air tickets--
SELECT COUNT(*)AS f_p_count FROM AIRLINE WHERE GENDER = 'Female';

--write a sql query to find number of passenger who have booked tickets in the business class--
SELECT COUNT(*)AS b_c_p_count FROM AIRLINE WHERE CLASS =:BUSINESS_CONSTANT;

-- write a sql query to find the number of passenger who have booked tickets in the 'eco' class--
SELECT COUNT(*)AS e_c_p_count FROM airline WHERE class ='Eco';

--write a sql query to find number of childern's who are all book the tickets(childerns are below age 13)--
SELECT COUNT(*)AS c_p_count FROM airline WHERE AGE<13;

-- write a sql query to count of passenger who are above the age of 16 and hqave booked tickets in the business class--
SELECT COUNT(*) AS p_above_16_in_b_c_count FROM AIRLINE WHERE AGE > 16 AND CLASS = :BUSINESS_CONSTANT;









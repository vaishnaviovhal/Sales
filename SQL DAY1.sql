CREATE DATABASE COACHX_TRAINING;
-----------------------------------------------------------------------------------------

CREATE TABLE CUSTOMERS
(
CUSTOMER_ID INT,
CUSTOMER_NAME CHAR(20),
CONTACT_NUMBER INT,
CITY CHAR(20),
COUNTRY CHAR(20)
);
-------------------------------------------------------------------------------------------

SELECT * FROM CUSTOMERS;
------------------------------------------------------------------------------------------

SELECT CUSTOMER_NAME, COUNTRY FROM CUSTOMERS;
------------------------------------------------------------------------------------------

INSERT INTO CUSTOMERS VALUES
(101,'CHARLIE',80347,'PUNE','INDIA'),
(102,'JOHN',747,'PARIS','ITALY'),
(103,'RAM',727,'DELHI','INDIA'),
(104,'SITA',7249,'BOSTAN','USA'),
(105,'TOMI',80347,'NEW YORK','USA');
------------------------------------------------------------------------------------------
SELECT * FROM [dbo].[Orders$]
SELECT * FROM [dbo].[People$]
SELECT * FROM [dbo].[Returns$]
-----------------------------------------------------------------------------------------

ALTER TABLE ORDERS$
ADD EMAIL_ID VARCHAR(100);
---------------------------------------------------------------------------------------------
SELECT * FROM ORDERS$
---------------------------------------------------------------------------------------------
ALTER TABLE CUSTOMERS
ADD STATES INT,EMAIL VARCHAR(20);
-------------------------------------------------------------------------------------------------
ALTER TABLE CUSTOMERS
DROP COLUMN CITY;
--------------------------------------------------------------------------------------------------
ALTER TABLE CUSTOMERS
DROP COLUMN EMAIL,STATES;
-------------------------------------------------------------------------------------------------
ALTER TABLE CUSTOMERS
ALTER COLUMN COUNTRY VARCHAR(20);
----------------------------------------------------------------------------------------------------
EXEC SP_RENAME'CUSTOMERS','CUSTOMER_DETAILS';

SELECT * FROM CUSTOMER_DETAILS;

EXEC SP_RENAME'CUSTOMER_DETAILS.CONTACT_NUMBER','CONTACT';
-----------------------------------------------------------------------------------------------------
UPDATE CUSTOMER_DETAILS
SET CUSTOMER_NAME='PRIYA'
WHERE CUSTOMER_NAME='CHARLIE';





SELECT * FROM ORDERS$
WHERE STATE = 'CALIFORNIA';

SELECT [ORDER ID], [SHIP DATE] FROM Orders$
WHERE STATE = 'CALIFORNIA';------equal to
------------------------------------------------------------------------------------------------------
SELECT [ORDER ID], [SHIP DATE] STATE FROM Orders$
WHERE STATE <> 'KENTUCKY';------not equal to
----------------------------------------------------------------------------------------------------
SELECT [ORDER ID],[SHIP DATE] FROM ORDERS$
WHERE [SHIP MODE] = 'SAME DAY'AND[SHIP DATE] >'2016-10-10';------and
-----------------------------------------------------------------------------------------------------
SELECT [ORDER ID],[SHIP DATE] FROM ORDERS$
WHERE [SHIP MODE] = 'SAME DAY'OR [SHIP DATE] >'2016-10-10';------or
-----------------------------------------------------------------------------------------------
SELECT CITY,REGION,SALES FROM ORDERS$
WHERE SALES BETWEEN 500 AND 2000;------between
--------------------------------------------------------------------------------------------------
SELECT CITY,REGION,SALES FROM ORDERS$
WHERE SALES NOT BETWEEN 500 AND 2000;------not between
-------------------------------------------------------------------------------------------
SELECT CITY,REGION,SALES FROM ORDERS$
WHERE CITY IN ('CHICAGO','NEW YORK','COLUMBUS');------in
----------------------------------------------------------------------------------------------
SELECT CITY,REGION,SALES FROM ORDERS$
WHERE CITY NOT IN ('CHICAGO','NEW YORK','COLUMBUS');------not in
----------------------------------------------------------------------------------------------

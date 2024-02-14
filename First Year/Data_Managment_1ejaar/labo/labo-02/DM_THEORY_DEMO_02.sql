SELECT * FROM tblproducts; -- This is a line comment

/* This is a
   multi-line comment */
SELECT * FROM tblproducts ;

SELECT * FROM tblproducts;


SELECT ProductNumber, ProductName, PricePerUnit, PricePerUnit * 1.33 
FROM tblproducts;

SELECT ProductNumber, ProductName, PricePerUnit, PricePerUnit * 1.33 AS SellingPrice
FROM tblproducts;

SELECT ProductNumber, ProductName, PricePerUnit, PricePerUnit * 1.33 AS 'Selling Price'
FROM tblproducts;

SELECT ProductNumber, ProductName, PricePerUnit, 
	concat(PricePerUnit * 1.33, ' €') AS 'Selling Price'
FROM tblproducts;


SELECT Name, Address, Zipcode, Balance
FROM tblcustomers
WHERE balance > 100;

SELECT Name, Address, Zipcode
FROM tblcustomers
WHERE balance != 0;

SELECT ProductNumber, ProductName, PricePerUnit
FROM tblproducts
WHERE PricePerUnit < 25;


SELECT Name, City, Type
FROM tblcustomers
WHERE Type =  'P' OR Type =  'R';

SELECT Name, City, Type
FROM tblcustomers
WHERE Type =  'P' AND Balance <> 0;

SELECT Name, Note
FROM tblcustomers
WHERE Note IS NOT NULL;


/*Between*/ 
SELECT Lastname, BirthDate 
FROM tblemployees
WHERE BirthDate BETWEEN '1960-01-01' AND '1965-01-01';

SELECT Lastname, BirthDate 
FROM tblemployees
WHERE BirthDate BETWEEN '1948-12-07 ' AND '1948-12-08';
 
 
/*IN*/
SELECT FirstName , ZipCode , Wage, City
FROM tblemployees
WHERE ZipCode IN (3000,2800);

SELECT FirstName , ZipCode , Wage, City
FROM tblemployees
WHERE ZipCode = 3000 OR ZipCode = 2800;
 
 
/*IN met subquery -- tblzipcodes doesnt exist*/
SELECT FirstName , ZipCode , Wage, City
FROM tblemployees
WHERE ZipCode IN (SELECT ZipCode FROM tblZipcodes WHERE ZipCode = 3000 OR ZipCode = 2800);


/*EXISTS -- tblzipcodes doesnt exist*/
SELECT FirstName, ZipCode
FROM tblemployee
WHERE EXISTS (SELECT ZipCode FROM tblZipcodes WHERE ZipCode = 3000 OR ZipCode = 2800);
 
 
 
SELECT * FROM tblemployees e WHERE 
	EXISTS (SELECT * FROM tblorders o WHERE o.EmployeeID = e.EmployeeID);
 
 SELECT SUM(Sales) FROM Store_Information 
	WHERE Store_Name IN 
		(SELECT Store_Name FROM Geography WHERE Region_Name = 'West');

 SELECT SUM(Sales) FROM Store_Information 
	WHERE EXISTS 
		(SELECT * FROM Geography WHERE Region_Name = 'West');

 
/*NULL*/
SELECT voornaam
    , postcode
    , brutowedde
FROM tblwerknemers
 WHERE postcode IS NULL;
 
 
/*LIKE*/
 
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern;

SELECT * FROM tblcustomers WHERE Name LIKE '%Van%'; /* return all customers whose name contains 
													the word "van" */
SELECT * FROM tblcustomers WHERE Name LIKE '_ander'; /*return all customers whose name starts 
													with any single character followed by the word "ander" */
SELECT * FROM tblcustomers WHERE Name LIKE 'V%n'; /* return all customers whose name starts 
													with a "v" and ends with a "n" */
SELECT * FROM my_table WHERE my_column LIKE '%\_example%'; /* The pattern %\_example% will match any string 
															that contains the substring "_example" somewhere in it.*/ 
 
/*REGEXP*/
SELECT * FROM tbl WHERE field REGEXP 'expressie'; 

SELECT * FROM tbl WHERE field REGEXP BINARY 'expressie'; 



SELECT * FROM tblcustomers WHERE name REGEXP '^j';        /*starts with j or J */
SELECT * FROM tblcustomers WHERE name REGEXP '^[jm]';     /*starts with j J m or M */
SELECT * FROM tblcustomers WHERE name REGEXP 'Mari[a-o]'; /*includes the characters 'Mari' 
															followed by any letter from 'a' to 'o' inclusive */
SELECT productname 
FROM tblproducts
WHERE CAST(productname AS BINARY)  REGEXP BINARY '[c,y,B]'
ORDER BY productname;


SELECT * FROM tblcustomers WHERE CAST(name AS BINARY) REGEXP BINARY '^J'; /* starts with capital J*/

 
/*SORT*/
SELECT productname, nederlandsenaam, priceperunit FROM tblproducts ORDER BY productname;

SELECT name, address, zipcode, city, balance FROM tblcustomers WHERE balance > 0 ORDER BY balance DESC;

SELECT lastname, firstname, city FROM tblemployees ORDER BY lastname ASC, firstname;

/*LIMIT*/
SELECT productname,  priceperunit 
FROM tblproducts  
ORDER BY priceperunit 
DESC LIMIT 5;

/*Distinct*/
SELECT city
FROM tblcustomers 
ORDER BY city;

SELECT DISTINCT city
FROM tblcustomers 
ORDER BY city;



/*------Functions-------*/

/*SUM*/
SELECT sum(balance) as 'Som' FROM tblcustomers;

/*MAX en MIN*/
SELECT max(birthdate) AS 'youngest', min(birthdate) AS 'oldest' FROM tblemployees;
SELECT date_format(max(birthdate), '%d-%m-%Y') AS 'youngest', min(birthdate) AS 'oldest' FROM tblemployees;



/*COUNT*/
SELECT COUNT(*) FROM tblcustomers ;
SELECT COUNT(*) AS NumberOfEmployees FROM tblcustomers ;
SELECT COUNT(city) AS NumberOfCities FROM tblcustomers ; 
SELECT COUNT(DISTINCT city) AS NumberOfCities FROM tblcustomers ; 

/*AVG*/
select AVG(wage) FROM tblemployees;

/*UCASE LCASE - Changing the case of a string */
SELECT UCASE(name) AS NaamCustomer,  LCASE(address) AS AdressCustomer FROM tblcustomers;

/*SUBSTRING - Extracting a substring from a string*/
SELECT SUBSTRING(name,5) AS NaamCustomer, name FROM  tblcustomers;

/*LTRIM - returns a string with any leading spaces (or any other specified character) removed*/
SELECT LTRIM(name) AS NaamCustomer,  name FROM  tblcustomer ;

/*FORMAT - format a number to a specific format.*/
select priceperunit, format(priceperunit,2) from tblproducts;

/*DATE_ADD*/
SELECT DATE_ADD(expirationdate, INTERVAL 1 DAY), expirationdate FROM tblorders; /* adds one day*/
SELECT '2016-10-12' + interval 1 day; /* adds one day*/
SELECT '2016-13-12' + interval 1 day; /* will result in an error because the date '2016-13-12' is not a valid date.*/
Show warnings; /*A statement used to display information about the warnings generated by the previous statement.*/

/*NOW - returns the current date and time*/
SELECT NOW(); /* alternative is CURRENT_DATE() */ 



SELECT lastname, TIMESTAMPDIFF(year, birthdate, Now()) as 'Age' 
FROM tblemployees order by TIMESTAMPDIFF(year, birthdate, Now()) desc;  	

/*DATEDIFF - Calculate time period (number of days employeed)*/ 	
SELECT DATEDIFF(Now(), employed) FROM tblemployees ; 

/*DATE_FORMAT - Returns the number of days between two dates */
SELECT DATE_FORMAT(employed, '%W %M %Y') FROM tblemployees; 

/*FIELD + DAYNAME */
/*DAYNAME returns the name of the weekday for a given date.*/
/*Using the ORDER BY FIELD clause allows us to sort the results based on a specific order defined by us, 
rather than sorting it in ascending or descending order based on the column value.*/
SELECT lastname , DAYNAME(employed) 
FROM tblemployees  
ORDER BY FIELD(DAYNAME(employed),'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' , 'Saturday', 'Sunday');

/*TIMESTAMPDIFF - Calculate the difference between two dates or times, in this example: in YEARS*/ 	
SELECT lastname, TIMESTAMPDIFF(year, birthdate, Now()) as `Age` 
FROM tblemployees order by `Age` desc;  

SELECT lastname, TIMESTAMPDIFF(year, birthdate, Now()) as 'Age'
FROM tblemployees order by 'Age' desc;  


/*IFNULL - a function used to replace NULL values with a specified value*/
SELECT IFNULL(priceperunit,0) * 0.9 AS Promotion FROM tblproducts ;

/*ISNULL - a function used to test whether a value is NULL*/ 
SELECT * FROM tblorders WHERE ISNULL(deliverydate);

/*IS (NOT) NULL - an operator used to test whether a value is NULL*/
SELECT * FROM tblcustomers WHERE registrationnumber IS NOT NULL;

/*CAST - convert a value of one data type to another, 
for example: a datetime field can be converted to the shorter 'date' field (when time is unnecessary).*/
SELECT lastname, firstname, employed, CAST(employed AS date) FROM tblemployees;

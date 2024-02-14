use artemis;
ALTER TABLE tblOrders CHANGE ShippingsCost ShippingsCost double;
select CategoryNumber, count(*) as 'Number of Products' from tblproducts where priceperunit>50  group by  CategoryNumber;
select city, count(*) as 'Number of Customers' from tblcustomers group by city order by count(*) desc;
select city, count(*) as 'Number of Customers' from tblcustomers group by city having count(*)>3 order by count(*) desc;
select JobTitle, count(*) as 'Number of Employees' from tblemployees group by Jobtitle;
SELECT Jobtitle,
CASE
    WHEN gender = 1 THEN 'Male'
    WHEN gender = 2 THEN 'Female'
end as Gender, count(*) as 'Number of Employees'
FROM tblemployees group by Jobtitle, gender;
SELECT COUNT(*) FROM tblcustomers WHERE registrationnumber IS NULL;
select CategoryNumber, suppliernumber, count(*) as 'Number of Products', 
	concat(round(sum(stock*priceperunit), 2), ' €') as 'Stock Price' 
	from tblproducts where suppliernumber=6 
    group by categorynumber, suppliernumber having sum(stock*priceperunit)>1000;

select year(deliverydate), concat(round(avg(datediff(deliverydate,orderdate))), ' days') from tblorders group by(year(deliverydate)) order by year(deliverydate) desc;
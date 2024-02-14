/*Artemis*/

/*1. Toon de producten waarvan de voorraad waarde (prijs per eenheid * voorraad) groter is dan het laagste
brutoloon van de werknemers (13)*/

SELECT min(wage) FROM tblemployees;

SELECT NederlandseNaam, priceperunit, stock, (priceperunit * stock) AS `stockvalue`
FROM tblproducts
WHERE (priceperunit * stock) > (SELECT min(wage) FROM tblemployees);

/*2. Zoek de klanten die toevallig dezelfde naam hebben als de familienaam van een werknemer */

SELECT name, city, zipcode, address
FROM tblcustomers
WHERE name IN (SELECT lastname FROM tblemployees);

/*3. Selecteer de klanten die in 2006 hun bestelde orders toegeleverd kregen in minder dan een maand. (20)*/

SELECT name, city, zipcode, address
FROM tblcustomers
WHERE CustomerId IN (
        SELECT CustomerNumber 
        FROM tblorders
        WHERE year(orderDate) = 2006 
        AND datediff(orderDate, deliveryDate) < 31);

/*4. Toon alle productgegevens die een bestelling plaatsten met een korting groter dan of gelijk aan 25%. (59)*/

SELECT productnumber, productname, nederlandsenaam
FROM tblproducts
WHERE productnumber IN (
	SELECT productnumber
    FROM tblorderinformation
    WHERE discount >= 0.25);

/*5. Geef in alfabetische volgorde de volledige naam van alle werknemers die nooit een bestelling behandelden (8).*/

SELECT concat(lastname, ' ', firstname) AS 'full name'
FROM tblemployees
WHERE employeeid NOT IN (
	SELECT EmployeeID
    FROM tblorders)
ORDER BY `full name`;

/*6. Geef de naam van elke werknemer die in dienst trad tussen de indiensttreding (datum) van Smets en de
indiensttreding van Daponte. Sorteer dalend volgens de datum van indiensttreding.(5)*/

SELECT lastname, date_format(employed, '%M %Y') AS 'employed date'
FROM tblemployees
WHERE Employed BETWEEN  (SELECT employed FROM tblemployees WHERE lastname = "Smets")
AND (SELECT employed FROM tblemployees WHERE lastname = "Daponte")
ORDER BY employed DESC;

/*7. Toon in alfabetische volgorde de categorieën en hun bijhorende producten waarvan er minder voorraad is
dan bestellingen. Het resultaat ziet er als volgt uit (11):*/

SELECT c.CategoryName, p.productname, (stock - onorder) AS 'deficit'
FROM tblcategories c
JOIN tblproducts p
ON c.CategoryNumber = p.CategoryNumber
WHERE stock < onorder;


/*8. Toon per land wat de leveranciers zijn en hoeveel producten ze leveren. Toon dat in volgorde van land en
volgorde van leveranciers (16)*/

SELECT s.country, s.company, concat(count(supplierid), ' product(s)') AS 'number of products'
FROM tblsuppliers s
JOIN tblproducts p
ON s.supplierid = p.suppliernumber
GROUP BY s.country, s.company
ORDER BY s.country, s.company;

/*9. Toon per categorie hoeveel unieke leveranciers er zijn. Doe dit in dalende volgorde van aantal leveranciers
(8).*/

SELECT c.categoryname, count(DISTINCT s.supplierid) AS 'number of suppliers'
FROM tblproducts p
JOIN tblsuppliers s
	ON s.SupplierId = p.SupplierNumber
JOIN tblcategories c
	ON c.CategoryNumber = p.CategoryNumber
GROUP BY categoryname
ORDER BY `number of suppliers` DESC;

/*10. Welke BTW tarieven werden nog niet gebruikt in de products tabel? (3)*/

SELECT t.taxcode, t.TaxPercentage
FROM tbltaxrate t
	LEFT JOIN tblproducts p
	ON t.taxcode = p.taxcode
WHERE t.taxcode NOT IN (SELECT taxcode FROM tblproducts);

/*11. Het is goed mogelijk dat een product nog nooit besteld werd. Bewijs het aan de hand van een query. Toon
de Nederlandse naam van deze nog nooit bestelde producten in alfabetische volgorde. (14)*/

SELECT p.NederlandseNaam, p.Productnumber
FROM tblproducts p
	LEFT JOIN tblorderinformation o
    ON p.ProductNumber = o.Productnumber
WHERE p.ProductNumber NOT IN (SELECT Productnumber FROM tblorderinformation)
ORDER BY p.NederlandseNaam;

/*12. Geef het totaal verkoopcijfer (hou rekening met de discount) van de werknemers. Ook de werknemers die
niets verkochten staan vermeld. Sorteer in dalende volgorde van omzet. (15)*/

SELECT e.lastname, concat(SUM((p.priceperunit - p.priceperunit * i.discount)* i.quantity), ' €') AS 'revenue'
FROM tblemployees e
	LEFT JOIN tblorders o ON e.EmployeeID = o.EmployeeID
	LEFT JOIN tblorderinformation i ON o.orderid = i.orderid
	LEFT JOIN tblproducts p ON i.Productnumber = p.ProductNumber
GROUP BY e.LastName
ORDER BY `revenue` DESC;


/*13. Controleer of de volgende uitspraken WAAR of NIET WAAR zijn en bewijs het aan de hand van een query.*/
/*a. Er zijn 3 leveranciers die geen producten leveren.*/

SELECT *
FROM tblsuppliers
WHERE supplierId NOT IN (
    SELECT supplierNumber FROM tblproducts
);
    
/*b. Alle producten zijn toegekend aan een categorie. Er zijn geen producten die niet werden
toegekend aan een categorie.*/

SELECT * FROM tblproducts
WHERE CategoryNumber NOT IN (
    SELECT CategoryNumber FROM tblcategories
);   
    
/*c. Er zijn 248 klanten die nog geen bestelling hebben geplaatst.*/

SELECT * FROM tblcustomers
WHERE CustomerId NOT IN (
    SELECT CustomerNumber FROM tblorders
);
    
/*d. Het management kan niet aanvaarden dat er orders zijn waar de behandelende werknemer niet
op vermeld staat. Hoeveel keer is deze fout dan wel gebeurd?*/

SELECT * FROM tblorders
WHERE EmployeeID IS NULL;
    
/*e. Er is geen enkele verzender, die nog geen order verstuurd heeft.*/

SELECT *
FROM tblshippers s
LEFT JOIN tblorders o
    ON o.ShipperID = s.ShipperId
WHERE o.OrderID IS NULL;

/*NORTHWIND*/

/*14. Welke Customers hebben nog geen orders geplaatst? (14)*/

SELECT company, last_name, first_name, address, city
FROM customers
WHERE id NOT IN (
	SELECT customer_id
    FROM orders);

/*15. Welke customers hebben een order geplaatst? Toon met een subquery. (15)*/

SELECT id, country_region
FROM customers
WHERE id IN (
	SELECT customer_id
    FROM orders);

/*16. Welke order status(sen) (id + naam) komen momenteel niet in de orders tabel? (1)*/

SELECT id, status_name
FROM orders_status
WHERE id NOT IN (
	SELECT status_id
    FROM orders);

/*17. Om nieuwjaarswensen te versturen willen we één lijst met alle namen van Employees, en Customers met
hun adres, gesorteerd volgens de stad.
We wensen een identificatie of de persoon ofwel een customer ofwel een employee is. Tip: maak gebruik
van een UNION. (38)*/

SELECT concat(first_name, ' ', last_name) AS 'full name', city, address, 'employees' AS 'tablename'
FROM employees
UNION
SELECT concat(first_name, ' ', last_name) AS 'full name', city, address, 'customers' AS 'tablename'
FROM customers
ORDER BY city;

/*18. Toon per privilege (naam) het aantal werknemers dat dit privilege toegekend kreeg. Zorg dat
eveneens getoond wordt hoeveel werknemers géén privilege toegekend kregen. (2)*/

SELECT p.privilege_name, p.id, COUNT(e.id) AS 'Number of Employees'
FROM employees e
    LEFT JOIN employee_privileges ep ON e.id = ep.employee_id
    LEFT JOIN privileges p ON ep.privilege_id = p.id
GROUP BY p.id;
	

/*19. Voor alle orders met een ID groter of gelijk aan 78 willen we de omzet (= aantal * price met korting).
Bovenaan staat het Order met de grootste omzet. Ook de bestelmaand is zichtbaar. (4)*/

SELECT o.id, date_format(o.order_date, '%Y %m'), customer_id, concat('€', SUM(d.quantity * d.unit_price * (1 - d.discount))) AS 'order price'
FROM orders o
	LEFT JOIN order_details d ON o.id = d.order_id
WHERE o.id >= 78
GROUP BY o.id
ORDER BY SUM(d.quantity * d.unit_price * (1 - d.discount)) DESC;

/*20. Pas bovenstaande query aan, zodat je de producten ziet van deze orders. De orderlijnen staan in
dalende orde van bestelhoeveelheid (quantity). (6)*/

SELECT o.id, o.order_date, p.id, p.product_name, format(d.quantity, 0, 'be-be')
FROM orders o
	LEFT JOIN order_details d ON o.id = d.order_id
	LEFT JOIN products p ON d.product_id = p.id
WHERE o.id >= 78
ORDER BY d.quantity DESC;

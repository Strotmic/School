/*UPDATE*/

/*1. De klant die order 11078 plaatste, wil van de producten die hij bestelde telkens 5 stuks meer bestellen.*/

SELECT orderid, productnumber, quantity, quantity + 5 as 'new quantity'
FROM tblorderinformation
WHERE orderid = 11078;

-- update
UPDATE tblorderinformation
SET quantity = quantity + 5
WHERE orderid = 11078;

/*2. Verhoog de saldo’s van de klanten met 10 % indien hun saldo groter is dan 1 000 euro.*/

SELECT customerid, balance, balance + balance * 0.1 AS 'new balance'
FROM tblcustomers
WHERE balance > 1000;

UPDATE tblcustomers
SET balance = balance + balance * 0.1
WHERE balance > 1000 AND customerid > 0;

/*3. De familie Vandeput is verhuisd van de Speelberg 6 in Linden naar de Zandloperstraat 9 in 9030 Mariakerke*/

SELECT name, address, zipcode, city
FROM tblcustomers
WHERE name = 'Vandeput';

UPDATE tblcustomers
SET address = 'Zandloperstraat 9', zipcode = 9030, city = 'Mariakerke'
WHERE name = 'Vandeput';

/*4. Er zijn vervaldatums die vóór de leverdatum liggen in tblorders. Omdat dat niet erg logisch is passen we
deze vervaldatum aan. Wanneer de vervaldatum meer dan 10 dagen vóór de leverdatum ligt, wordt de
vervaldatum gelijk aan de leverdatum verhoogd met een random getal tussen minimum 1 en maximum 5
dagen ( rand() * 5 ).*/

SELECT orderid, ExpirationDate, DeliveryDate, datediff(DeliveryDate, ExpirationDate) AS 'days between'
FROM tblorders
WHERE datediff(DeliveryDate, ExpirationDate) > 10;

UPDATE tblorders
SET ExpirationDate = date_add(DeliveryDate, INTERVAL( rand() * 5) DAY)
WHERE datediff(DeliveryDate, ExpirationDate) > 10;

/*5. In tblWerknemers is het cijfer 1 en cijfer 2 onduidelijk om het geslacht aan te duiden. Verander met een
update de 1 naar “M” en de 2 naar “V”.*/

SELECT EmployeeID, Gender
FROM tblemployees;

UPDATE tblemployees
SET gender = CASE gender
				WHEN 1 THEN 'M'
                WHEN 2 THEN 'V'
                END;
                
/*DELETE*/

/*Indien men een klant wenst te wissen en deze klant heeft geen orders, dan kan een delete zonder meer en
zonder verlies van data gebeuren.*/

/*6. Zoek de klanten op die geen order hebben en hou het aantal bij (248).*/

SELECT *
FROM tblcustomers
WHERE customerid NOT IN
	(SELECT customernumber FROM tblorders);
    
SELECT *
FROM tblcustomers c
	LEFT JOIN tblorders o ON c.customerid = o.customernumber
WHERE o.orderid IS NULL;

/*7. Delete één klant die geen orders heeft door één van de klantnummers (uit resultaatset vraag 6) in te
geven.*/

DELETE FROM tblcustomers
WHERE customerid = 1;

/*8. Delete met één query drie klanten die geen orders hebben.*/

DELETE FROM tblcustomers
WHERE customerid NOT IN (
	SELECT CustomerNumber
	FROM tblorders
)
LIMIT 3;

/*9. Controleer jouw queries door het resterende aantal klanten te tellen (244)*/

SELECT *
FROM tblcustomers c
	LEFT JOIN tblorders o ON c.customerid = o.customernumber
WHERE o.orderid IS NULL;

/*Nu willen we een klant verwijderen die wel orders geplaatst heeft*/

/*10. Zoek een klant die het minst aantal orders heeft.*/

SELECT c.customerid, name, count(o.orderid) AS 'number of orders'
FROM tblorders o
	INNER JOIN tblcustomers c ON o.CustomerNumber = c.CustomerId
GROUP BY c.CustomerId
ORDER BY `number of orders`
LIMIT 1;

/*11. Probeer deze klant te verwijderen. Wat stel je vast?*/

DELETE FROM tblcustomers
WHERE customerid = 210;

/*12. Bekijk hieronder de resultaten van een klant die wel verwijderd werd. Welke techniek werd toegepast in
deze voorstellingen.*/
/*13. Pas één van deze bovenstaande technieken toe om de klant met minste orders te verwijderen. Gebruik
het klantnummer dat je opzocht.*/
-- op cascade zetten in foreign keys

DELETE FROM tblcustomers
WHERE customerid = 210;

/*14. Artemis verkoopt geen zuivelproducten meer en wenst daarom de producten ervan “uit het assortiment”
te nemen en de categorie “Zuivel” te verwijderen*/
/*a. Over hoeveel producten gaat het hier?*/

SELECT *
FROM tblproducts p
	JOIN tblcategories c ON p.CategoryNumber = c.CategoryNumber
WHERE c.CategoryName LIKE "%zuivel%";

/*b. Zorg dat UitAssortiment (discontinued) aangevinkt staat en verwijder de categorienaam.*/

UPDATE tblproducts p
	JOIN tblcategories c ON p.CategoryNumber = c.CategoryNumber
SET discontinued = 1
WHERE c.CategoryName LIKE "%zuivel%";

/*c. Is het een goed idee om deze zuivelproducten te verwijderen? Toon dit aan.*/

DELETE FROM tblcategories
WHERE CategoryName LIKE "%zuivel%";
-- nee, er zijn orderinfo hangt hieraan

/*15. Werknemer Davidson voerde een foutief order op. Het werd zogezegd geleverd op 15 mei 2006, maar
bleek niet waar te zijn. Er wordt beslist om dit order volledig te verwijderen. Hoe ga je te werk?
Maak gebruik van een JOIN of SUBQUERY voor de uitwerking hiervan.*/
-- oppassen want kan ook in orderinformation zitten en dan moe tdaar ook verwijderd worden

SELECT *
FROM tblorders o
	JOIN tblemployees e ON o.EmployeeID = e.EmployeeID
WHERE o.DeliveryDate = "2006-05-15" AND e.LastName = "Davidson";

DELETE o
FROM tblorders o
JOIN tblemployees e ON o.EmployeeID = e.EmployeeID
WHERE o.DeliveryDate = "2006-05-15" AND e.LastName = "Davidson";

/*DELETE, INSERT and UPDATE*/

/*16. Voeg een nieuwe klant toe: Howest , Graaf Karel de Goedelaan 5, 8500 Kortrijk, BTW 102-213-123*/

INSERT INTO tblcustomers (name, address, zipcode, city, RegistrationNumber)
VALUES ("Howest", "Graaf Karel de Goedelaan 5", 8500, "Kortrijk", "BTW 102-213-123");

/*17. Maak een tabel tblmeat (categorie 6) met alle vleesproducten*/

CREATE TABLE tblmeat AS
	SELECT *
    FROM tblproducts
    WHERE CategoryNumber = 6;
    
SELECT *
FROM tblmeat;

/*18. Verwijder uit de tabel tblmeat de producten waarvan we geen voorraad meer hebben*/

DELETE FROM tblmeat
WHERE  stock = 0;

/*19. Voeg jezelf als werknemer toe. Je hoeft nog niet alle velden in te vullen.*/

INSERT INTO tblemployees (lastname, firstname, address, zipcode, city, car)
VALUES ("Van den Bossche", "Talia", "Holestraat 59", 9552, "Borsbeke", 1);

/*20. Daarna zet jij als werknemer een order klaar voor de zopas aangemaakte klant “Howest”.
De orderdatum wordt ingesteld op vandaag (CURDATE())
Het INSERT statement bouw je op door gebruik te maken van twee subqueries.*/
-- o Een eerste query haalt op basis van tblemployees het ID op van jezelf.

SELECT employeeid
FROM tblemployees
WHERE firstname = "Talia";

-- o Een tweede query haalt op basis van tblcustomers het ID op van de klant ‘Howest’

SELECT customerid
FROM tblcustomers
WHERE name = "Howest";

-- insert

INSERT INTO tblorders (customernumber, employeeid, orderdate)
VALUES (
	(SELECT customerid
	FROM tblcustomers
	WHERE name = "Howest"),
    (SELECT employeeid
	FROM tblemployees
	WHERE firstname = "Talia"),
    curdate());
    
SELECT *
FROM tblorders;

/*21. Het zopas aangemaakte order ga je nu ook verwijderen door in de WHERE clause de klantnaam ‘Howest’ te
gebruiken. Je verwijdert het order (orders) van vandaag.*/

DELETE o
FROM tblorders o
JOIN tblcustomers c ON o.CustomerNumber = c.CustomerId
WHERE c.name = "Howest" AND o.orderdate = curdate();

/*22. We willen prijzen aanpassen in tblproducts. Maar omdat prijzen een delicate zaak is, zullen we eerst een
kopie van de tabel maken om op de gekopieerde tabel de gewijzigde prijzen uit te testen.*/
-- o Maak een kopie van tblproducten

CREATE TABLE tblproducts_copy LIKE tblproducts;
INSERT INTO tblproducts_copy SELECT * FROM tblproducts;

-- o Maak een update query die de PrijsPerEenheid van het product “Tofu” met 10% verhoogt.

SELECT *
FROM tblproducts_copy
WHERE productname = "Tofu";

UPDATE tblproducts_copy
SET priceperunit = priceperunit * 1.1
WHERE productname = "Tofu";

-- o Pas de update query aan zodat alle prijzen die tot categorie ‘6’ behoren met 5% verlaagd
-- worden. Prijzen in de categorie ‘5’ worden met 6% verhoogd. Het gebeurt met één query
-- (gebruik een controlestructuur zoals CASE)

UPDATE tblproducts_copy
SET priceperunit = CASE
	WHEN categorynumber = 6 THEN priceperunit * 0.95
    WHEN categorynumber = 5 THEN priceperunit * 1.06
    END;

-- o Nu we zeker zijn van het resultaat passen we de laatste query ook toe op de originele
-- tblproducts.*/

SELECT *
FROM tblproducts
WHERE productname = "Tofu";

UPDATE tblproducts
SET priceperunit = priceperunit * 1.1
WHERE productname = "Tofu";

UPDATE tblproducts
SET priceperunit = CASE
	WHEN categorynumber = 6 THEN priceperunit * 0.95
    WHEN categorynumber = 5 THEN priceperunit * 1.06
    END;

/*VIEWS*/

/*23. Maak een view aan die alle fruit producten teruggeeft. Toon alle product kolommen en de categorienaam.*/

CREATE VIEW fruitproducts AS
SELECT c.CategoryName, p.ProductName
FROM tblproducts p
JOIN tblcategories c ON p.CategoryNumber = c.CategoryNumber
WHERE p.CategoryNumber = 7;

/*24. Maak gebruik van een view om per categorie de producten weer te geven met hun prijs. Sorteer stijgend
per categorienaam, dalend per eenheidsprijs.*/

CREATE VIEW prices AS
SELECT c.CategoryName, p.ProductName, p.priceperunit
FROM tblproducts p
JOIN tblcategories c ON p.CategoryNumber = c.CategoryNumber
ORDER BY c.CategoryName ASC, p.PricePerUnit DESC;

/*25. Kan je gebruik maken van dezelfde view om alle producten weer te geven die nog geen categorie hebben?
Pas desnoods de vorige view aan zodat dit wel lukt.*/

CREATE VIEW null_category AS
SELECT c.CategoryName, p.ProductName, p.priceperunit
FROM tblproducts p
JOIN tblcategories c ON p.CategoryNumber = c.CategoryNumber
WHERE c.CategoryName IS NULL
ORDER BY c.CategoryName ASC, p.PricePerUnit DESC;

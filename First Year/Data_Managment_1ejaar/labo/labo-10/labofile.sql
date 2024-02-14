/*proefexamen*/

/*Toon alle producten die ooit aangekocht zijn door klanten waarvan de familienaam van de klant begint met
‘Ha’. Naast de productnaam toon je ook de bestelde hoeveelheid*/

CREATE VIEW `1-producten` AS
SELECT p.Name, s.quantity 
FROM products p
JOIN sales s ON s.ProductID = p.ProductID
JOIN customers c ON c.CustomerID = s.CustomerID
WHERE c.lastname LIKE 'Ha%';

/*Toon de familienaam van alle werknemers die het product ‘Chainring’ verkocht hebben*/

CREATE VIEW `2-filterverkoop` AS
SELECT e.LastName 
FROM employees e
JOIN sales s ON s.SalesPersonID = e.EmployeeID
JOIN products p ON p.ProductID = s.ProductID
WHERE p.Name LIKE 'Chainring';

/*Maak een overzicht van de verkoop per categorie, namelijk voor elke categorie wordt het aantal verkochte
stuks getoond.
Voeg “ stuks” achteraan toe bij het aantal. Alle categorieën worden getoond. De categorie met het hoogst
aantal producten staat bovenaan.*/

CREATE VIEW `3-categoriën` AS
SELECT c.Description, concat(SUM(s.quantity), ' stuks') AS `Aantal` 
FROM categories c
JOIN products p ON p.CategoryID = c.CategoryID
JOIN sales s ON s.ProductID = p.ProductID
GROUP BY c.Description
ORDER BY `Aantal` DESC;

/*Maak een overzicht van de producten per categorie. Voor elke categorie wordt de categorie beschrijving en
het totale bedrag getoond van de verkochte producten.
Voeg het € -teken toe bij het bedrag. Alle categorieën worden getoond. De categorie met het hoogste totale
bedrag staat bovenaan. */

CREATE VIEW `4-categoriën` AS
SELECT c.CategoryID, c.Description, concat('€ ', (SUM(s.quantity * p.Price))) AS `totaal bedrag` 
FROM categories c
JOIN products p ON p.CategoryID = c.CategoryID
JOIN sales s ON s.ProductID = p.ProductID
GROUP BY c.CategoryID
ORDER BY `totaal bedrag` DESC;

/*Toon de verkochte aantallen van verkopen die gebeurden over het weekend (= verkopen op een Zaterdag of
een Zondag). Dit aantal wordt gevolgd door het woordje “ stuks”.
Je toont het salesid, de verkochte aantallen en de verkoopdatum als ‘dag/maand/jaar’.
Je sorteert in een dalende volgorde van verkoopdatum.*/

CREATE VIEW `5-weekend` AS
SELECT s.SalesID, concat(s.quantity, ' stuks') AS `Aantal`, date_format(s.SalesDate, '%d/%m/%Y') AS 'datum' 
FROM sales s
WHERE WEEKDAY(s.SalesDate) = 5 OR WEEKDAY(s.SalesDate) = 6
ORDER BY s.SalesDate DESC;

/*Maak een overzicht dat per product toont hoeveel dagen er tussen de laatste verkoop en vandaag zitten. Het
product met het meest aantal dagen staat bovenaan. */

CREATE VIEW `6-tijd` AS
SELECT p.Name, datediff(current_date(), max(s.SalesDate)) AS `aantal dagen`
FROM products p
JOIN sales s ON s.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY `aantal dagen` DESC;

/*Toon een lijst van alle klanten die nog niets gekocht hebben. De lijst bevat de voornaam en naam (in
HOOFDLETTERS). (bijv Stijn WALCARIUS). Het resultaat staat gesorteerd volgens de familienaam (stijgend)*/

CREATE VIEW `7-zonderverkoop` AS
SELECT concat(c.FirstName, ' ', UPPER(c.Lastname)) AS `naam`
FROM customers c
WHERE c.customerid NOT IN (
	SELECT customerID FROM sales
)
ORDER BY `naam`;

/*Toon een lijst van alle medewerkers die niets verkocht hebben sinds 1 april 2020. (01/04/2020 inbegrepen) De
lijst bevat de voornaam (in HOOFDLETTERS ) en naam. (bijv STIJN Walcarius). Het resultaat staat gesorteerd
volgens de voornaam (stijgend).*/

CREATE VIEW `8-zonderverkoop` AS
SELECT concat(UPPER(e.FirstName), ' ', e.Lastname) AS `naam`
FROM employees e
WHERE e.employeeid NOT IN(
	SELECT salespersonid FROM sales
    WHERE salesDate > '2020/04/01'
)
ORDER BY `naam`;

/*We maken een overzicht van verkopen die gebeurden tussen 15 maart 2020 en 30 april 2020. Beide
grensdatums zijn in begrepen. We groeperen het overzicht per product (name), en tonen het totaal aantal
verkopen voor dit product
Om de lijst te beperken worden enkel die producten getoond, die meer dan 100 keer verkocht geweest zijn
De lijst staat in dalende volgorde van dit totaal aantal verkochte producten.
*/

CREATE VIEW `9-verkoop` AS 
SELECT p.Name, SUM(s.quantity)
FROM sales s
INNER JOIN products p ON p.productid = s.productid
WHERE s.SalesDate BETWEEN '2020/03/15' AND '2020/04/30 23:59:59' 
GROUP BY p.name 
HAVING SUM(s.quantity) > 100
ORDER BY SUM(s.quantity) DESC;

/*We maken een overzicht van verkopen die gebeurden tussen 15 maart 2020 en 30 april 2020. Beide
grensdatums zijn in begrepen. We groeperen het overzicht per werknemer (Lastname), en tonen het totaal
aantal verkopen voor deze werknemer
Om de lijst te beperken worden enkel die producten getoond, die meer dan 5000 keer verkocht geweest zijn
De lijst staat in dalende volgorde van dit totaal aantal verkochte producten*/

CREATE VIEW `10-verkoop` AS
SELECT e.lastname, sum(s.quantity)
FROM sales s
INNER JOIN employees e ON e.employeeid = s.salespersonid
WHERE (s.SalesDate BETWEEN '2020/03/15' AND '2020/04/30 23:59:59')
GROUP BY e.lastname 
HAVING sum(s.quantity) > 5000
ORDER BY sum(s.quantity) DESC;
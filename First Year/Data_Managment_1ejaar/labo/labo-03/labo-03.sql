ALTER TABLE tblOrders CHANGE ShippingsCost ShippingCost double;

/*GROUP BY and HAVING*/

/*1. Tel het aantal producten per categorie.
We zijn enkel geïnteresseerd in de producten die duurder zijn dan 50 euro.
Zorg voor een leesbare (gebruikersvriendelijke) tabel. (6)*/

SELECT categorynumber, concat(count(productname), IF(count(productname)=1, ' product', ' producten')) AS 'number of products'
FROM tblproducts
WHERE priceperunit > 50
GROUP BY categorynumber
ORDER BY CategoryNumber;

/*2. Toon per gemeente hoeveel klanten er wonen. Sorteer volgens aantal.(94)*/

SELECT city, count(customerid) AS 'number of customers'
FROM tblcustomers
GROUP BY city
ORDER BY `number of customers` DESC;

/*3. Toon per gemeente hoeveel klanten er wonen, hou enkel de gemeenten over waar er meer dan 3
klanten wonen. = Resultaat van de group by (16)*/

SELECT city, count(customerid) AS 'number of customers'
FROM tblcustomers
GROUP BY city
HAVING `number of customers` > 3
ORDER BY `number of customers` DESC;

/*4. Toon hoeveel werknemers een bepaalde functie vervullen. Sorteer op de functie. (10)*/

SELECT jobtitle, count(employeeid) AS 'number of employees'
FROM tblemployees
GROUP BY JobTitle;

/*5. Pas de bovenstaande query aan zodat je ziet hoeveel mannelijke en hoeveel vrouwelijke werknemers
een functie vervullen. (11)*/

SELECT jobtitle, CASE gender
					WHEN '2' THEN 'Vrouw'
					WHEN '1' THEN 'Man'
					ELSE 'onbekend'
                END AS 'gender'
		, count(employeeid) AS 'number of employees'
FROM tblemployees
GROUP BY jobtitle, gender
ORDER BY jobtitle;

/*6. Toon hoeveel klanten geen ondernemingsnummer hebben. (256)*/

SELECT RegistrationNumber, count(customerid) AS 'number of customers'
FROM tblcustomers
GROUP BY RegistrationNumber
HAVING RegistrationNumber IS NULL;

/*7. Vul de eerste query uit deze oefeningen aan zodat je per categorie de waarde van de totale voorraad
ziet. Je zorgt ervoor dat alle producten in rekening worden gebracht. (8) VOORRAADWAARDE = stock * eenheidsprijs
Pas vervolgens de formatering van de waarde aan, zodat slechts 2 cijfers na de komma/punt zichtbaar
zijn met € als valuta*/

SELECT categorynumber, concat(count(productname), IF(count(productname)=1, ' product', ' producten')) AS 'number of products', concat(round(sum(stock * priceperunit), 2), ' €') AS 'stock value'
FROM tblproducts
GROUP BY categorynumber
ORDER BY `stock value`;

/*8. Pas bovenstaande tabel aan zodat je, van leverancier met leveranciersnummer 4, ziet wat de waarde
en het aantal producten van deze voorraad is per categorienummer. (4)*/

SELECT categorynumber, SupplierNumber, concat(count(productname), IF(count(productname)=1, ' product', ' producten')) AS 'number of products', concat(round(sum(stock * priceperunit), 2), ' €') AS 'stock value'
FROM tblproducts
WHERE SupplierNumber = 4
GROUP BY categorynumber
ORDER BY `stock value`;

/*9. Toon per categorie voor leverancier met nummer 6, het aantal stuks en de waarde van de totale
voorraad Toon alleen rijen die de totale voorraadwaarde van 1000 € overschrijden (1)*/

SELECT categorynumber, SupplierNumber, concat(count(productname), IF(count(productname)=1, ' product', ' producten')) AS 'number of products', concat(round(sum(stock * priceperunit), 2), ' €') AS 'stock value'
FROM tblproducts
WHERE SupplierNumber = 6
GROUP BY categorynumber
HAVING `stock value` > 1000
ORDER BY `stock value`;

/*10. Toon van de orders de gemiddelde levertermijn per jaar. Zorgt eerst voor resultaten en formateer nadien op 0 cijfers na de komma. Voeg het woord ‘days’ toe.*/

SELECT year(deliverydate) AS 'year', concat(round(avg(datediff(deliverydate, orderdate))), ' days') AS 'avg levertermijn'
FROM tblorders
WHERE DeliveryDate IS NOT NULL
GROUP BY `year`
ORDER BY `year` DESC;

/*Control Flow functions*/

/*11. Ga vooraf op zoek in de MySQL referentie hoe je IF() functie kan gebruiken. Wanneer er slects 2 keuzes
zijn kan je immers een IF() gebruiken in plaats van een CASE. Gebruik nu die IF() om volgende weergave
te maken uit de tabel tblEmployees waarbij de kolom ‘Auto anders weergegeven wordt.*/

SELECT lastname, firstname, IF(car = 1, 'beschikt over firma wagen', 'beschikt NIET over firma wagen') AS 'firmawagen?'
FROM tblemployees
ORDER BY lastname;

/*12. Maak gebruik van IF() om volgend probleem op te lossen:
Voor orders die nog niet geleverd werden, staat de “Leverdatum” op NULL. Soms zijn de “Vrachtkosten”
(shipping costs) dan ook nog niet gekend. Maak een overzicht van alle orders en vervang beide NULLs
door “Not been delivered yet” (1081)*/

SELECT IF(deliverydate IS NULL, 'not been delivered yet', deliverydate) AS 'deliverydate', IF(shippingcost IS NULL, 'not been delivered yet', shippingcost) AS 'shipping cost'
FROM tblorders
ORDER BY deliverydate;

/*Import Adventure works*/

/*AdventureWorks*/

/*13. Gebruik de tabel Person om personen op te zoeken met een middlename ‘J’, en met een lastname
‘Alexander’ of ‘Zhang’. Je toont FirstName, MiddleName, LastName en ID’s. (13)*/

SELECT firstname, middlename, lastname, BusinessEntityID
FROM person
WHERE middlename REGEXP 'J' AND (lastname REGEXP 'Alexander' OR lastname REGEXP 'Zhang');

/*14. Gebruik de tabel product om alle producten te tonen (met ID, Name, Size, Color) waar Size of Color nog
NULL zijn. (293)*/

SELECT productid, name, size, color
FROM product
WHERE size IS NULL OR color IS NULL;

/*15. Tel hoeveel producten er wel een Size EN een Color hebben, en wat de gemiddelde grootte (van size)
is. Opgelet: bij sommige producten is de size ingesteld als 'M', 'L', 'S' of 'XL'. Tel deze niet mee.*/

SELECT 'product info' AS '', count(productid) as 'number of products', round(avg(size)) AS 'average size'
FROM product
WHERE size IS NOT NULL AND color IS NOT NULL AND size NOT IN ('M', 'L', 'S', 'XL');

/*16. Toon uit de tabel person de personen waarbij de LastName start met een V of een W. Toon FirstName,
MiddleName en LastName. Rangschik ze volgens LastName. Zorg dat je de 1290 rijen te zien krijgt. De ‘NULL’ valt op en wensen we weg te doen met een concatenatie. Plaats met andere woorden de
drie naamdelen in één kolom “FullName”. Wat nu echter opvalt is dat alle sommeringen (of
concatenaties) met een NULL een volledige NULL teruggeven. Dat wensen we niet. Je kan het oplossen
door een NULL te vervangen door een ledige string (of een andere string zoals een spatie). Welke
functie ga je hiervoor gebruiken? .*/

SELECT concat(firstname, ' ', IF(middlename IS NULL, '', middlename), ' ', lastname) AS 'full name'
FROM person
WHERE lastname REGEXP '^V' OR lastname REGEXP '^W'
ORDER BY lastname;

/*17. Laat het bovengaande resultaat voorafgaan door het BusinessEntityID nummer. Dit nummer is geen
string maar een INT. Een convertie van INT naar String is daarom nodig als we willen concatineren.
Toch hoef je hiervoor geen ‘CAST’ te doen. Reden: concat() verzorgt de convertie.. Test dit uit. Sorteer
nu ook het resultaat stijgend volgens het BusinessEntityID:*/

SELECT concat(businessentityid, ' ',firstname, ' ', IF(middlename IS NULL, '', middlename), ' ', lastname) AS 'full name'
FROM person
WHERE lastname REGEXP '^[VW]'
ORDER BY businessentityid;

/*18. In de tabel person zijn er 5 voornamen, die als je ze omdraait nog altijd hetzelfde zijn (Vb. Bob). Kan je
ze vinden? Tip: gebruik een functie. (5)*/

SELECT firstname
FROM person
WHERE firstname = reverse(firstname)
GROUP BY firstname;

/*19. Gebruik de functie SUBSTRING en LOCATE op de kolom Email adres in de tabel productReview om alle
domeinen op te halen. (4)
Raadpleeg referenties.
	Met LOCATE kan je de positie van @ zoeken.
	Met SUBSTRING kan je vanaf deze positie een deel van een string (= de domeinnaam) ophalen.*/
    
SELECT substring(emailaddress, locate('@', EmailAddress) + 1, length(emailaddress)) AS 'domeinnaam'
FROM productreview;

/*20. Creeër een alfabetische lijst met JobTitles uit de tabel Employee. Zorg ervoor dat elke JobTitle maar 1
keer voorkomt. (67)*/

SELECT jobtitle
FROM employee
GROUP BY jobtitle;

/*21. Maak een query die in de tabel Person alle personen ophaalt met een voornaam die een “K” of “k”
bevat. (1957)*/

SELECT firstname
FROM person
WHERE firstname LIKE '%K%' OR FirstName LIKE '%k%';

/*22. Geef de gemiddelde orderwaarde (TotalDue) per verkoopmedewerker, alleen voor de medewerkers
die meer dan 50 orders hebben afgehandeld. (15) Tip: gebruik de tabel SalesOrderHeader*/

SELECT SalesPersonID, avg(totaldue)
FROM salesorderheader
GROUP BY SalesPersonID
HAVING count(SalesOrderId) > 50;

/*23. Geef het totaal aantal orders per jaar en per kwartaal. (13)*/

SELECT year(orderdate) AS year, count(orderdate) AS 'Total order', QUARTER(orderdate) AS Quarter
FROM salesorderheader
GROUP BY year, quarter;

/*24. Hoeveel orders zijn er geplaatst in elke maand van het jaar? (12)*/

SELECT month(orderdate) AS 'month', count(salesorderid) AS 'number of orders'
FROM salesorderheader
GROUP BY month(orderdate)
ORDER BY month(orderdate);

/*25. Wat is het totale bedrag van bestellingen per klant (CustomerID) en per jaar? (26017)*/

SELECT CustomerID, year(OrderDate) AS 'Year', concat(ROUND(SUM(TotalDue)),' € ') AS 'Totaal bedrag' 
FROM salesorderheader 
GROUP BY customerID, `Year`
ORDER BY customerID, `Year`;
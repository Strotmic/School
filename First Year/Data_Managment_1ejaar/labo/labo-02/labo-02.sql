/*Operators*/

/*1. Creëer een query die onderstaand overzicht genereert. (269)*/

SELECT customerid, name, address, concat(zipcode, ' ', city) AS 'Zipcode & city'
FROM tblcustomers;

/*2. Welke klanten hebben een schuld tussen 150 en 300 euro, grenzen inbegrepen? Sorteer dalend op saldo.
Maak deze query op 2 manieren. (20) */

SELECT customerid, name, address, concat(zipcode, ' ', city) AS 'Zipcode & city'
FROM tblcustomers
WHERE balance BETWEEN 150 AND 300;
/* of >= 150 AND <=300

/*3. Welke werknemers zijn er jarig in juli of augustus? Ook hier zijn verschillende mogelijkheden (2)*/

SELECT employeeid, concat(lastname, " ", firstname) AS 'Name', birthdate
FROM tblemployees
WHERE month(birthdate) = 7 OR month(birthdate) = 8;

/*4. Welke werknemers zijn er niet jarig in juli of augustus? (13)*/

SELECT employeeid, concat(lastname, " ", firstname) AS 'Name', birthdate
FROM tblemployees
WHERE month(birthdate) NOT IN (7, 8);

/*5. Ga na welke werknemers geboren zijn tussen 1 januari 1960 en 27 januari 1966. Sorteer op
geboortedatum. Test dit grondig! Wat gebeurt er als je al dan niet de tijd mee invoert in de expressie? (8)*/
SELECT employeeid, concat(lastname, " ", firstname) AS 'Name', birthdate
FROM tblemployees
WHERE BirthDate BETWEEN '1960/01/01' AND '1966/01/27 23:59:59'
/*nodig wanneer effectieve tijd ingevuld is*/
ORDER BY birthdate;

/*6. Welke klanten wonen er in Leuven, Herent, Kessel-Lo of Heverlee?(69)*/

SELECT customerid, name, address, city
FROM tblcustomers
WHERE city IN ('Leuven', 'Herent', 'Kessel-Lo', 'Heverlee');

/*7. Welke klanten wonen er niet in Leuven, Herent, Kessel-lo of Heverlee?(200)*/

SELECT customerid, name, address, city
FROM tblcustomers
WHERE city NOT IN ('Leuven', 'Herent', 'Kessel-Lo', 'Heverlee');

/*8. Ga na welke producten er behoren tot de categorie Dranken (1), Kruiden (2), Zoetwaren (3), Zuivel (4) en
Vis (8). Toon de Nederlandse naam met tussen haakjes de productnaam, en daarnaast het
categorienummer van die producten. Sorteer volgens Categorienummer en Nederlandsenaam. (59)*/

SELECT concat(nederlandsenaam, '(', productname, ')') AS 'Product', categorynumber
FROM tblproducts
WHERE CategoryNumber IN (1, 2, 3, 4, 8)
ORDER BY CategoryNumber AND NederlandseNaam;

/*9. Ga na welke soorten thee er worden verkocht bij Artemis. (1)*/

SELECT nederlandsenaam, productname
FROM tblproducts
WHERE nederlandsenaam LIKE '%thee%';

/*10. Welke soorten van kaas en vleesproducten worden aangeboden? (10)*/

SELECT nederlandsenaam, productname
FROM tblproducts
WHERE NederlandseNaam LIKE '%kaas%' OR NederlandseNaam LIKE '%vlees%';

/*11. Toon de kaas en vleesproducten met een eenheidsprijs beneden de 32 €? (4)*/

SELECT nederlandsenaam, productname, priceperunit
FROM tblproducts
WHERE PricePerUnit < 32 AND (NederlandseNaam LIKE '%kaas%' OR NederlandseNaam LIKE '%vlees%');

/*12. Zoek alle klanten waarvan de naam begint met ‘Vander’. Toon naam en gemeente van de klant.(4)*/

SELECT customerid, name, city
FROM tblcustomers
WHERE name LIKE '%Vander%';

/*13. Toon nu enkel de klanten waar de naam begint met ‘Vander’ en eindigt op een ‘t’ (2)*/

SELECT customerid, name, city
FROM tblcustomers
WHERE name LIKE '%Vander%t';

/*14. Zoek alle klanten die in een straat wonen dat ‘dorp’ in de naam bevat. (2)*/

SELECT customerid, name, address,city
FROM tblcustomers
WHERE address LIKE '%dorp%';

/*15. Geef leveranciers weer die in hun bedrijfsnaam minimum één van volgende woorden bevatten: an,
foot. Test hoofdlettergevoeligheid. (5)*/

SELECT supplierid, company
FROM tblsuppliers
WHERE company LIKE '%an%' OR company LIKE '%foot%';

/*Regular Expressions*/

/*16. Gebruik eens een reguliere expressie om te zoeken naar het productnummer waarvan de naam
begint met ‘chef’ en eindigt op ‘mix’. (1)*/

SELECT productname
FROM tblproducts
WHERE productname REGEXP '^chef.*mix$';
/* kan ook met like*/

/*17. Toon productnamen die een kleine c bevatten. Productnamen met enkel een grote C en geen kleine c
worden hierdoor niet getoond. Sorteer volgens productnaam (25)*/

SELECT productname
FROM tblproducts
WHERE CAST(productname AS BINARY) REGEXP BINARY 'c';

/*18. Pas de zo pas aangemaakte query aan om productnamen te tonen met kleine c, kleine y of grote B
(33)*/

SELECT productname
FROM tblproducts
WHERE CAST(productname AS BINARY) REGEXP BINARY '[cyB]';

/*19. Toon de klanten die een openstaand saldo hebben van 4 karakters. (37)*/

SELECT name, balance
FROM tblcustomers
WHERE balance REGEXP '.{4}';

/*20. Bekijk hoe het BTWPercentage opgevoerd is in tblbtwtarief: één getal – een punt – twee getallen.
Maak hiervoor een reguliere expressie dat dit patroon matcht. (4)
Test de REGEXP door er eens alle tarieven op te vragen met dit patroon. Test ook het omgekeerde:
pas het werkend patroon aan zodat je geen data terugkrijgt. (0)*/

SELECT taxpercentage
FROM tbltaxrate
WHERE TaxPercentage REGEXP '.{1}\..{2}';

/*SORT*/

/*21. Maak een lijst van alle traiteurs en winkeliers. Zorg ervoor dat in dit lijstje alle traiteurs samen staan
en alle winkeliers samen staan. De traiteurs rangschik je alfabetisch op naam, idem voor de
winkeliers. (81)*/

SELECT type, name
FROM tblcustomers
WHERE type IN ('T', 'W')
ORDER BY type, name;

/*22. Hoe zorg je ervoor dat de traiteurs onderaan staan in het lijstje? (81)*/

SELECT type, name
FROM tblcustomers
WHERE type = 'W' OR type = 'T'
ORDER BY type DESC, name;

/*23. Maak een lijst van alle klanten die schulden hebben en zet de klanten met de grootste schulden
bovenaan. Let op het € teken. (269)*/

SELECT name, concat('€ ', balance) AS 'Saldo'
FROM tblcustomers
WHERE balance > 0
ORDER BY balance DESC;

/*24. Maak een lijst van alle personeelsleden, gesorteerd op geboortedatum zodat de oudste bovenaan
staan. (15)*/

SELECT concat(lastname, ' ', firstname) AS 'name', birthdate
FROM tblemployees
ORDER BY birthdate;

/*SELECT*/

/*25. Welke personeelsleden zijn in dienst genomen in 1993? Sorteer dalend op datum.(5)*/

SELECT concat(lastname, ' ', firstname) AS 'name', employed
FROM tblemployees
WHERE year(employed) = 1993
ORDER BY employed DESC;

/*26. Welke klanten (in alfabetische volgorde) wonen er in Leuven? (23)*/

SELECT name, city
FROM tblcustomers
WHERE city = 'Leuven'
ORDER BY name;

/*27. Geef naam en voornaam van de vrouwelijke personeel leden uit Leuven (2)*/

SELECT gender, concat(lastname, ' ', firstname) AS 'name', city
FROM tblemployees
WHERE gender = 2 and city = 'Leuven';

/*28. Geef naam en voornaam van de mannelijke personeelsleden die niet in Kessel-lo, Herent of Leuven
wonen. (9)*/

SELECT gender, concat(lastname, ' ', firstname) AS 'name', city
FROM tblemployees
WHERE gender = 1 and city NOT IN ('Leuven', 'Kessel-Lo', 'Herent');

/*29. Welke klanten (in alfabetische volgorde) hebben een saldo groter dan 175 euro? (64)*/

SELECT name, concat('€ ', balance) AS 'Saldo'
FROM tblcustomers
WHERE balance > 175
ORDER BY name;

/*30. Geef een lijst van de klanten waarvan de naam begint met Van (29)*/

SELECT name
FROM tblcustomers
WHERE name LIKE 'Van%';

/*31. Toon de familienaam én gemeente - beide in hoofdletters - van de vertegenwoordigers uit de tabel
werknemers, die niet in Leuven, Herent, Peer of Genk wonen. Maak gebruik van UPPER voor het
maken van hoofdletters (4). */

SELECT upper(city) AS 'City', upper(lastname) AS 'last name', jobtitle
FROM tblemployees
WHERE city NOT IN ('Leuven', 'Herent', 'Peer', 'Genk') AND jobtitle = 'vertegenwoordiger';

/*32. Toon de naam van de producten die moeten bijbesteld worden. Bijbestellen moet als het aantal in
voorraad min het aantal in bestelling (= de tekorten) onder het bestelpunt ligt. Sorteer de lijst zodat
het hoogste aantal dringende bijbestellingen (aantal tekorten) bovenaan staan.(18)*/

SELECT productname, stock, onorder, shop, (stock - onorder) AS `Pressingshortages`
FROM tblproducts
WHERE (stock - onorder) < shop
ORDER BY `Pressingshortages`;

/*33. Geef de leveranciers weer die niet in Spanje of het Verenigd Koninkrijk wonen. Beperk de weergave
tot 5 leveranciers in alfabetische volgorde. Geef ze als volgt weer:*/

SELECT concat(upper(company), ' from ', upper(country)) AS 'COMPANY and COUNTRY'
FROM tblsuppliers
WHERE country NOT IN ('Spanje', 'Verenigd Koninkrijk')
ORDER BY company
LIMIT 5;

/*34. Maak een alfabetisch overzicht van de landen die een leverancier hebben. Het land mag maar één
keer voorkomen in de lijst. (10)*/

SELECT DISTINCT country
FROM tblsuppliers
ORDER BY country;

/*Aggregate functions*/

/*35. Wat is het schuldsaldo van de klanten met een btw-nummer? Hoeveel klanten zijn dat?*/

SELECT count(*) AS 'Number of customers', sum(balance) as 'Balance'
FROM tblcustomers
WHERE registrationnumber IS NOT NULL;

/*36. Hoeveel orders zijn er geplaatst op 6 augustus 2006? Hou er rekening mee dat een order op een
ander tijdstip van de dag kon besteld worden, ook al zijn ze in Artemis opgevoerd op tijdstip 0.*/

SELECT count(*) AS 'number of orders'
FROM tblorders
WHERE orderdate BETWEEN '2006/08/06 00:00:00.000000' AND '2006/08/06 23:59:59';

/*37. Toon de gemiddelde prijs per eenheid van alle producten, nadat deze met 10 % verhoogd werden.*/

SELECT AVG(priceperunit * 1.1)
FROM tblproducts;

/*38. Toon het aantal vertegenwoordigers die vroeger dan 1993 in dienst waren. (5)*/

SELECT count(*) AS 'number of vertegenwoordigers before 1993'
FROM tblemployees
WHERE jobtitle = 'vertegenwoordiger' AND year(employed) < 1993;

/*39. Toon het aantal jaren verschil tussen de oudste en de jongste werknemer uit Leuven. (18)*/

SELECT max(birthdate) AS 'youngest', min(birthdate) AS 'oldest', year(max(birthdate)) - year(min(birthdate)) AS 'verschil'
FROM tblemployees
WHERE city = 'Leuven';

/*40. Hoeveel orders zijn er in 2005 geplaatst? (358)*/

SELECT count(*) AS 'number of orders in 2005'
FROM tblorders
WHERE year(OrderDate) = 2005;

/*41. Wat is de gemiddelde brutowedde dat een werknemer ontvangt in het bedrijf? (2776.67 €))*/

SELECT avg(wage)
FROM tblemployees;

/*42. Hoeveel mannen zijn er in dienst? (Man = 1) (9)*/

SELECT count(*) AS'number of employeed men'
FROM tblemployees
WHERE gender = 1;

/*43. Wat is het verschil tussen het duurste en het goedkoopste product? ((258.8€))*/

SELECT min(priceperunit) AS 'cheapest', max(priceperunit) AS 'most expensive', max(priceperunit) - min(priceperunit) AS 'verschil'
FROM tblproducts;

/*44. Hoeveel klanten komen er uit de regio Brussel? (2)*/

SELECT count(*) AS 'number of customers from Brussels'
FROM tblcustomers
WHERE city = 'Brussel';

/*Date & NULL*/

/*45. Hoeveel orders zijn er nog niet uitgeleverd? (23)*/

SELECT count(*) AS 'number of undelivered orders'
FROM tblorders
WHERE DeliveryDate IS NULL;

/*46. Wat is de gemiddelde tijd tussen de vervaldatum en de orderdatum voor orders die wel geleverd
werden? (28)*/

SELECT avg(datediff(expirationdate, orderdate)) AS 'gemiddelde tijd'
FROM tblorders
WHERE deliverydate IS NOT NULL;

/*47. Toon alle orders die niet besteld werden op een Maandag of Vrijdag (861)*/

SELECT orderid, customernumber, dayname(orderdate) AS 'order day'
FROM tblorders
WHERE dayname(orderdate) NOT IN ('Monday', 'Friday');

/*48. Vul de vorige query aan door alfabetisch te sorteren volgens de dag van de week. Voor dit sorteren
kan je de ORDER BY FIELD gebruiken. (861)*/

SELECT orderid, customernumber, dayname(orderdate) AS 'order day'
FROM tblorders
WHERE dayname(orderdate) NOT IN ('Monday', 'Friday') ORDER BY field(dayname(orderdate),'Tuesday','Wednesday','Thursday','Saturday','Sunday');

/*49. Toon met 1 query hoeveel vrouwelijke werknemers er zijn en wat hun gemiddelde leeftijd is (in
jaren).*/

SELECT count(*) AS 'number of female employees', avg(timestampdiff(year, birthdate, now())) AS 'average age'
FROM tblemployees
WHERE gender = 2;

/*50. Pas de weergave van bovenstaande query aan zodat je maar één cijfer na de komma hebt voor de
gemiddelde leeftijd.*/

SELECT count(*) AS 'number of female employees', round(avg(timestampdiff(year, birthdate, now())), 1) AS 'average age'
FROM tblemployees
WHERE gender = 2;

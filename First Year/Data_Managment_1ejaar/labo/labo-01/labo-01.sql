/*1. Creëer een query die het productnummer, de productnaam, de eenheidsprijs (unitprice) en de
voorraadwaarde (eenheidsprijs maal aantal stuks in voorraad) laat zien. Voeg een “€”-teken toe aan het
resultaat. Voeg het woordje “stuks” toe voor de aantallen. (77)
*/

SELECT productnumber, productname, priceperunit AS "Aankoopprijs", concat(stock, " stuks") AS "Voorraad", 
	concat(priceperunit *stock, " €") AS "Voorraadwaarde"
FROM tblproducts;

/*
2. Creëer een query die het productnummer, de productnaam, de aankoopprijs (priceperunit) en de
verkoopprijs laat zien. De verkoopprijs wordt bepaald via een 15% winstmarge op de aankoopprijs. Toon de
absolute winst in €. Zorg voor een duidelijk leesbare tabel (=bedoeld voor de marketing afdeling van het
bedrijf). (77)
*/

SELECT productnumber, productname, 
concat(priceperunit, "€") AS "Aankoopprijs", 
concat(priceperunit * 1.15, "€") AS "Verkoopprijs",
concat(0.15 * priceperunit, "€") AS "Winst"
FROM tblproducts;

/*
3. Creëer een query die alle klanten die in Tienen wonen selecteert en hun klantnummer, naam en type
toont.(7 klanten)
*/

SELECT customerid, name, type
FROM tblcustomers
WHERE city = "Tienen";

/*
4. Creëer een query die alle productnamen toont van de producten van categorie 1 (12 namen)
*/

SELECT productname
FROM tblproducts
WHERE categorynumber = 1;

/*
5. Creëer een query die alle klantnamen laat zien van die klanten die in Genk wonen (postnummer 3600). (9)
Pas daarna de query aan om het aantal personen van Leuven (postnummer 3000) te tonen (23).
Controleer grondig het resultaat.
*/

SELECT name
FROM tblcustomers
WHERE zipcode = 3000;

/*
6. Maak een query, je toont alle particuliere klanten (type P) die nog een openstaand saldo (balance) hebben
en die in Tienen wonen. (2 klanten)
*/

SELECT name, type, balance, city
FROM tblcustomers
WHERE type = "P" and balance != 0 and city = "Tienen";

/*
7. Creëer een query die de klanten selecteert die in Leuven of Herent wonen. Toon klantnaam en stad.(30)
*/

SELECT name, city
FROM tblcustomers
WHERE city = "Leuven" or city = "Herent";

/*
8. Creëer de query die de belangrijkste adresgegevens van de traiteurs (type T) en winkeliers (type W) laat
zien. Toon de gemeente en postnummer in eenzelfde kolom (81)
*/

SELECT name, address, concat(zipcode," ", city) AS "city"
FROM tblcustomers
WHERE type = "T" OR type = "W";

/*
9. Creër een query die alle werknemers laat zien die geboren zijn vóór 1 januari 1950. (3)
Naam en voornaam komen in een kolom ‘Volledige naam’
*/

SELECT employeeid, concat(lastname, " ", firstname) AS "Volledige naam", birthdate
FROM tblemployees
WHERE birthdate < "1950-01-01 00:00:00.000000";
CREATE VIEW `excelsheet` AS
SELECT h.volgnummer, d.merk, d.beschrijving, d.naam, h.waarde, d.meeteenheid, h.datum, a.actiebeschrijving
FROM historiek h
JOIN device d ON d.deviceid = h.deviceid
JOIN actie a on a.actieid = h.actieid
ORDER BY h.volgnummer;

CREATE VIEW `gemiddelde sensor` AS
SELECT d.naam, ROUND(AVG(h.waarde),2) as 'gemiddelde'
FROM device d
JOIN historiek h ON d.deviceid = h.deviceid
WHERE h.waarde IS NOT NULL
GROUP BY d.naam
ORDER BY d.naam;
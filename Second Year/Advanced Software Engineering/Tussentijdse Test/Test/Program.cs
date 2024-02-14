using test;
using System;
using System.Collections.Generic;

ISnelheidscontroleRepository repo = new SnelheidscontroleRepository();
SnelheidsControleService service = new SnelheidsControleService(repo);

// Printen van een gesorteerde lijst van snelheidscontroles
Console.WriteLine("Sorted List");
List<Snelheidscontrole> snelheidscontroles = service.GetSnelheidscontroles();
foreach (Snelheidscontrole snelheidscontrole in snelheidscontroles)
{
    Console.WriteLine(snelheidscontrole);
}

// Printen van lijst snelheidscontroles gefilterd op een maand
Console.WriteLine("Filtered List");
List<Snelheidscontrole> snelheidscontrolesOpMaand = service.GetSnelheidscontrolesOpMaand(1);
foreach (Snelheidscontrole snelheidscontrole in snelheidscontrolesOpMaand)
{
    Console.WriteLine(snelheidscontrole);
}

// Printen van lisjt snelheidscontroles gefilterd op straat en gemeente
Console.WriteLine("Filtered List Straat en Gemeente");
List<Snelheidscontrole> snelheidscontrolesOpStraat = service.GetSnelheidscontrolesOpLocatie("TOMBROEKSTRAAT", "KORTRIJK");
foreach (Snelheidscontrole snelheidscontrole in snelheidscontrolesOpStraat)
{
    Console.WriteLine(snelheidscontrole);
}

// Printen van gefilterde lijst maar details
Console.WriteLine("Filtered List Straat en Gemeente");
List<Snelheidscontrole> snelheidscontrolesDetails = service.GetSnelheidscontrolesOpLocatie("TOMBROEKSTRAAT", "KORTRIJK");
foreach (Snelheidscontrole snelheidscontrole in snelheidscontrolesDetails)
{
    Console.WriteLine(snelheidscontrole.Details);
}

// Add Controles
Console.WriteLine("Add Controles");
Snelheidscontrole nieuweSnelheidscontrole = new Snelheidscontrole(
    jaar: 3333,
    maand: 1,
    locatie: new Locatie("Graaf Karel de Goedelaan", 8500, "Kortrijk"),
    details: "",
    aantalControles: 1,
    aantalVoertuigen: 2,
    aantalOvertredingen: 3
);
service.AddSnelheidscontrole(nieuweSnelheidscontrole);

// Printen van alle controles
Console.WriteLine("Printen van alle controles");
List<Snelheidscontrole> snelheidscontroles2 = service.GetSnelheidscontroles();
foreach (Snelheidscontrole snelheidscontrole in snelheidscontroles2)
{
    Console.WriteLine(snelheidscontrole);
}
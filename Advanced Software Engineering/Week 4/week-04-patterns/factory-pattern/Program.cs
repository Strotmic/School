using Demo.Factory;
using Demo.Models;



var var = VehicleFactory.GetVehicle(VehicleFactory.VehicleType.Bike);

Console.WriteLine($"Wheels: {var.Wheels}, Color: {var.Color}, Brand: {var.Brand}");

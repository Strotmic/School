List<int> listA = new List<int> { 1, 2, 3, 4, 5 };
List<int> listB = new List<int> { 4, 5, 6, 7, 8 };

// Use LINQ Intersect to find common elements
var commonElements = listA.Intersect(listB);

// Print out the common elements
foreach (var element in commonElements)
{
    Console.WriteLine(element);
}
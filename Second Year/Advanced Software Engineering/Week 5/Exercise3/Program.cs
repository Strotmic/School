using MCT.Exercise3;
// List of 50 random numbers
List<int> randomNumbers = new List<int>();
Random random = new Random();
for (int i = 0; i < 50; i++)
{
    randomNumbers.Add(random.Next(0, 100));
}

// Print the list
Console.WriteLine("Random numbers:");
foreach (var number in randomNumbers)
{
    Console.WriteLine(number);
}

// order the list
randomNumbers = OrderList(randomNumbers);

// Print the list
Console.WriteLine("Random numbers ordered:");
foreach (var number in randomNumbers)
{
    Console.WriteLine(number);
}

// Get all even numbers from list
List<int> evenNumbers = GetEvenNumbers(randomNumbers);

// Print the list
Console.WriteLine("Even numbers:");
foreach (var number in evenNumbers)
{
    Console.WriteLine(number);
}

// Get all odd numbers from list
List<int> oddNumbers = GetOddNumbers(randomNumbers);

// Print the list
Console.WriteLine("Odd numbers:");
foreach (var number in oddNumbers)
{
    Console.WriteLine(number);
}

// Get all numbers that are divisible by 3 from list
List<int> numbersDivisibleBy3 = GetNumbersDivisibleBy3(randomNumbers);

// Print the list
Console.WriteLine("Numbers divisible by 3:");
foreach (var number in numbersDivisibleBy3)
{
    Console.WriteLine(number);
}

// Get all numbers that are divisible by 3 and 5 from list
List<int> numbersDivisibleBy3And5 = GetNumbersDivisibleBy3And5(randomNumbers);

// Print the list
Console.WriteLine("Numbers divisible by 3 and 5:");
foreach (var number in numbersDivisibleBy3And5)
{
    Console.WriteLine(number);
}

// Get all numbers smaller than 30
List<int> numbersSmallerThan30 = GetNumbersSmallerThan30(randomNumbers);

// Print the list
Console.WriteLine("Numbers smaller than 30:");

foreach (var number in numbersSmallerThan30)
{
    Console.WriteLine(number);
}

// Get all numbers smaller than 30 and bigger than 20
List<int> numbersSmallerThan30AndBiggerThan20 = GetNumbersSmallerThan30AndBiggerThan20(randomNumbers);

// Print the list
Console.WriteLine("Numbers smaller than 30 and bigger than 20:");
foreach (var number in numbersSmallerThan30AndBiggerThan20)
{
    Console.WriteLine(number);
}

// Get the sum of all numbers smaller than 30 and bigger than 20
int sumOfNumbersSmallerThan30AndBiggerThan20 = GetSumOfNumbersSmallerThan30AndBiggerThan20(randomNumbers);

// Print the sum
Console.WriteLine($"Sum of numbers smaller than 30 and bigger than 20: {sumOfNumbersSmallerThan30AndBiggerThan20}");

// Get the average of all numbers smaller than 30 and bigger than 20
double averageOfNumbersSmallerThan30AndBiggerThan20 = GetAverageOfNumbersSmallerThan30AndBiggerThan20(randomNumbers);

// Print the average
Console.WriteLine($"Average of numbers smaller than 30 and bigger than 20: {averageOfNumbersSmallerThan30AndBiggerThan20}");

// get the max of all numbers smaller than 30 and bigger than 20
int maxOfNumbersSmallerThan30AndBiggerThan20 = GetMaxOfNumbersSmallerThan30AndBiggerThan20(randomNumbers);

// Print the max
Console.WriteLine($"Max of numbers smaller than 30 and bigger than 20: {maxOfNumbersSmallerThan30AndBiggerThan20}");

// get the min of all numbers smaller than 30 and bigger than 20
int minOfNumbersSmallerThan30AndBiggerThan20 = GetMinOfNumbersSmallerThan30AndBiggerThan20(randomNumbers);

// Print the min
Console.WriteLine($"Min of numbers smaller than 30 and bigger than 20: {minOfNumbersSmallerThan30AndBiggerThan20}");

// get the first number bigger than 20
int firstNumberBiggerThan20 = GetFirstNumberBiggerThan20(randomNumbers);

// Print the first number bigger than 20
Console.WriteLine($"First number bigger than 20: {firstNumberBiggerThan20}");

// add 1 to each number in the list
List<int> numbersPlusOne = AddOneToEachNumber(randomNumbers);

// Print the list
Console.WriteLine("Numbers plus one:");
foreach (var number in numbersPlusOne)
{
    Console.WriteLine(number);
}



Console.WriteLine("Give me 2 numbers");
int a = int.Parse(Console.ReadLine());
int b = int.Parse(Console.ReadLine());

// Sum function
int sum(int x, int y) {
    return x + y;
};

// Substract function
int sub(int x, int y) {
    return x - y;
};

// Multiply function
int mul(int x, int y) {
    return x * y;
};

// Divide function
double div(double x, double y) {
    double i = x/y;
    return Math.Round(i, 2);
};

Console.WriteLine($"The sum of {a} and {b} is {sum(a, b)}");
Console.WriteLine($"The substraction of {a} and {b} is {sub(a, b)}");
Console.WriteLine($"The multiplication of {a} and {b} is {mul(a, b)}");
Console.WriteLine($"The division of {a} and {b} is {div(a, b)}");

namespace MCT.Excercise3;

// Order list in ascending order
public static List<int> OrderList(List<int> list)
{
    list.Sort();
    return list;
}

// Get all even numbers from list
public static List<int> GetEvenNumbers(List<int> list)
{
    List<int> evenNumbers = new List<int>();
    foreach (var number in list)
    {
        if (number % 2 == 0)
        {
            evenNumbers.Add(number);
        }
    }
    return evenNumbers;
}

// Get all odd numbers from list
public static List<int> GetOddNumbers(List<int> list)
{
    List<int> oddNumbers = new List<int>();
    foreach (var number in list)
    {
        if (number % 2 != 0)
        {
            oddNumbers.Add(number);
        }
    }
    return oddNumbers;
}

// Get all numbers that are divisible by 3 from list
public static List<int> GetNumbersDivisibleBy3(List<int> list)
{
    List<int> numbersDivisibleBy3 = new List<int>();
    foreach (var number in list)
    {
        if (number % 3 == 0)
        {
            numbersDivisibleBy3.Add(number);
        }
    }
    return numbersDivisibleBy3;
}

// Get all numbers that are divisible by 3 and 5 from list
public static List<int> GetNumbersDivisibleBy3And5(List<int> list)
{
    List<int> numbersDivisibleBy3And5 = new List<int>();
    foreach (var number in list)
    {
        if (number % 3 == 0 && number % 5 == 0)
        {
            numbersDivisibleBy3And5.Add(number);
        }
    }
    return numbersDivisibleBy3And5;
}

// Get all numbers smaller than 30
public static List<int> GetNumbersSmallerThan30(List<int> list)
{
    List<int> numbersSmallerThan30 = new List<int>();
    foreach (var number in list)
    {
        if (number < 30)
        {
            numbersSmallerThan30.Add(number);
        }
    }
    return numbersSmallerThan30;
}

// Get all numbers smaller than 30 and bigger than 20
public static List<int> GetNumbersSmallerThan30AndBiggerThan20(List<int> list)
{
    List<int> numbersSmallerThan30AndBiggerThan20 = new List<int>();
    foreach (var number in list)
    {
        if (number < 30 && number > 20)
        {
            numbersSmallerThan30AndBiggerThan20.Add(number);
        }
    }
    return numbersSmallerThan30AndBiggerThan20;
}


// Get the Sum of all numbers smaller than 30 and bigger than 20
public static int GetSumOfNumbersSmallerThan30AndBiggerThan20(List<int> list)
{
    int sum = 0;
    foreach (var number in list)
    {
        if (number < 30 && number > 20)
        {
            sum += number;
        }
    }
    return sum;
}

// Get the average of all numbers smaller than 30 and bigger than 20
public static double GetAverageOfNumbersSmallerThan30AndBiggerThan20(List<int> list)
{
    int sum = 0;
    int count = 0;
    foreach (var number in list)
    {
        if (number < 30 && number > 20)
        {
            sum += number;
            count++;
        }
    }
    return sum / count;
}

// Get the max of all numbers smaller than 30 and bigger than 20
public static int GetMaxOfNumbersSmallerThan30AndBiggerThan20(List<int> list)
{
    int max = 0;
    foreach (var number in list)
    {
        if (number < 30 && number > 20)
        {
            if (number > max)
            {
                max = number;
            }
        }
    }
    return max;
}

// Get the min of all numbers smaller than 30 and bigger than 20
public static int GetMinOfNumbersSmallerThan30AndBiggerThan20(List<int> list)
{
    int min = 0;
    foreach (var number in list)
    {
        if (number < 30 && number > 20)
        {
            if (number < min)
            {
                min = number;
            }
        }
    }
    return min;
}

// Get the first number bigger than 20
public static int GetFirstNumberBiggerThan20(List<int> list)
{
    int firstNumberBiggerThan20 = 0;
    foreach (var number in list)
    {
        if (number > 20)
        {
            firstNumberBiggerThan20 = number;
            break;
        }
    }
    return firstNumberBiggerThan20;
}

// Add 1 to each value
public static List<int> Add1ToEachValue(List<int> list)
{
    List<int> listWith1Added = new List<int>();
    foreach (var number in list)
    {
        listWith1Added.Add(number + 1);
    }
    return listWith1Added;
}
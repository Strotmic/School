int[] ints = { 1, 2, 3, 4, 5 };
var result = ChangeArrayElements(ints, AddOne);
Console.WriteLine(string.Join(", ", result));

ints = new int[] { 1, 2, 3, 4, 5 };
result = ChangeArrayElements(ints, SubtractOne);
Console.WriteLine(string.Join(", ", result));

int[] ChangeArrayElements(int[] numbers, NumberDelegate operation)
{
    int[] result = new int[numbers.Length];
    for (int index = 0; index < result.Length; index++)
        result[index] = operation(numbers[index]);
    return result;
}

/*
int[] ChangeArrayElements(int[] numbers, Func<int, int> operation)
{
    int[] result = new int[numbers.Length];
    for (int index = 0; index < result.Length; index++)
        result[index] = operation(numbers[index]);
    return result;
}
*/

int AddOne(int number)
{
    return number + 1;
}

int SubtractOne(int number)
{
    return number - 1;
}

int MultiplyByTwo(int number)
{
    return number * 2;
}

delegate int NumberDelegate(int number);

